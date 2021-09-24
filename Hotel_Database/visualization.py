import datetime as dt

import psycopg2

import matplotlib.pyplot as plt

import pandas as pd
import numpy as np

def get_data():
    # connecting to the psql server
    conn = psycopg2.connect(
        host="comp421.cs.mcgill.ca", 
        database="cs421", 
        user="cs421g79",
        password="Bestteamever79", 
        port="5432", 
        sslmode="require"
    )

    data = {
        'stays': pd.read_sql("SELECT stid, checkin_date FROM stays;", conn, index_col='stid'),
        'services': pd.read_sql("SELECT * FROM services;", conn, index_col='sid'),
        'massages': pd.read_sql("SELECT sid FROM massage;", conn, index_col='sid'),
        'tables': pd.read_sql("SELECT sid FROM tables;", conn, index_col='sid')
    }

    conn.close()

    return data

def main():
    data = get_data()

    fig, (ax1, ax2) = plt.subplots(2,1,gridspec_kw={'height_ratios': [1, 2]})

    # Create check-in histogram
    months = [d.month for d in data['stays']['checkin_date'].values]
    bins = np.arange(1,14)
    ax1.hist(months, bins=bins, edgecolor='k', align='left')
    ax1.set_xticks(bins[:-1])
    ax1.set_xticklabels([dt.date(1900,i,1).strftime('%b') for i in bins[:-1]])
    ax1.set_title('Number of Check-ins per Month')

    # Create services pie-chart
    data['services']['is_massage'] = [sid in data['massages'].index for sid in data['services'].index]
    data['services']['is_table'] = [sid in data['tables'].index for sid in data['services'].index]

    services_map = {
        'Massage & Table' : (True, True),
        'Massage Only': (True, False),
        'Table Only': (False, True),
        'No Services': (False, False)
    }

    temp = data['services'].groupby(['stid']).any()
    data['stays']['has_massage'] = [(stid in temp.index) and (temp.loc[stid, 'is_massage']) for stid in data['stays'].index]
    data['stays']['has_table'] = [(stid in temp.index) and (temp.loc[stid, 'is_table']) for stid in data['stays'].index]
    stays_services = data['stays'].groupby(['has_massage', 'has_table']).size()

    labels = ['No Services', 'Massage Only', 'Table Only', 'Massage & Table']
    sizes = [stays_services.loc[services_map[l]] for l in labels]

    ax2.pie(sizes, labels=labels, autopct='%1.1f%%', startangle=90)
    ax2.axis('equal')
    ax2.set_title('Services Usage Among Stays', y=1.08)

    fig.tight_layout(pad=3.0)

    plt.show()

if __name__ == "__main__":
    main()