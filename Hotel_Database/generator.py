import random
import re
import datetime as dt
import itertools

import pandas as pd

# Some constants
MAX_ROOMS = 32
MAX_RES_TABLES = 16

TODAY = dt.datetime.today()

first_names = pd.read_csv('data/first_names.csv')
last_names = pd.read_csv('data/last_names.csv')

def random_first_name():
    return first_names.loc[random.randint(0,len(first_names)-1)].item()

def random_last_name():
    return last_names.loc[random.randint(0,len(last_names)-1)].item()

def padd_num(prefix, n):
    return prefix + "".join([f"{random.randint(0,9)}" for _ in range(n)])

def random_ccnum():
    issuer = random.choice(['AMEX', 'MC', 'VISA'])

    if issuer == 'AMEX':
        # AMEX
        prefix = random.choice(['34', '37'])
        return int(padd_num(prefix, 13))
    elif issuer == 'MC':
        # Mastercard
        prefix = random.choice(['51', '52', '53', '54', '55', f'{random.randint(222100, 272099)}'])
        return int(padd_num(prefix, 16 - len(prefix)))
    else:
        # VISA
        prefix = '4'
        return int(padd_num(prefix, random.choice([13, 16, 19]) - 1))

def random_date(lbound, ubound):
    ldate = dt.datetime.strptime(lbound, '%Y-%m-%d')
    udate = dt.datetime.strptime(ubound, '%Y-%m-%d')

    num_days = (udate - ldate).days

    date = ldate + dt.timedelta(days=random.randint(0, num_days))

    return date

rgx = re.compile('[\'\ -]')
def random_email(firstname, lastname, dob):
    fmt = random.choice(['FULLNAME', 'NAME_YEAR', 'ABBREV'])
    provider = random.choice(['gmail.com', 'outlook.com', 'yahoo.com', 'hotmail.com'])
    if fmt == 'FULLNAME':
        return f"{rgx.sub('', firstname).lower()}.{rgx.sub('', lastname).lower()}@{provider}"
    elif fmt == 'NAME_YEAR':
        return f"{rgx.sub('', firstname).lower()}{dob[2:4]}@{provider}"
    else:
        return f"{rgx.sub('', firstname).lower()[0]}{rgx.sub('', lastname).lower()[:random.randint(4,6)]}@{provider}"

def generate_guest():
    firstname, lastname = random_first_name(), random_last_name()
    dob = random_date('1960-01-01', '2000-01-01').strftime('%Y-%m-%d')
    
    guest = {
        'name': firstname + " " + lastname,
        'credit_card_number': random_ccnum(),
        'email_address': random_email(firstname, lastname, dob),
        'passport_number': "".join([chr(random.randint(65, 90)) for _ in range(random.randint(1,2))]) + padd_num("", random.randint(6,8)),
        'date_of_birth': dob
    }

    return guest

def pkg_name(pkg):
    if pkg == (False, False, False):
        return "standard"
    else:
        b, p, m = pkg
        name = ""
        if b:
            name += "breakfast"
        if p:
            name += "pool" if len(name) == 0 else "-pool"
        if m:
            name += "massage" if len(name) == 0 else "-massage"
        return name

def generate_packages():
    pkg_perks = [p for p in itertools.product([True, False], repeat=3)]
    
    pkgs = []
    for perks in pkg_perks:
        b, p, m = perks
        pkg = {
            'name': pkg_name(perks),
            'breakfast_included': b,
            'access_pool': p,
            'one_hour_massage': m
        }

        pkgs.append(pkg)
    
    return pkgs

def generate_stay(gid):
    if random.random() < 0.5:
        # Generate past stay
        checkin = random_date('2000-01-01', (TODAY - dt.timedelta(days=1)).strftime('%Y-%m-%d'))
        checkout = random_date(checkin.strftime('%Y-%m-%d'), (checkin + dt.timedelta(days=20)).strftime('%Y-%m-%d'))

        stay = {
            'number_of_rooms': random.randint(1, 4),
            'number_of_people': random.randint(1, 6),
            'checkin_date': checkin.strftime('%Y-%m-%d'),
            'checkout_date': checkout.strftime('%Y-%m-%d'),
            'gid': gid
        }
    else:
        # Current stay
        checkin = random_date('2020-02-18', TODAY.strftime('%Y-%m-%d'))

        stay = {
            'number_of_rooms': random.randint(1, MAX_ROOMS),
            'number_of_people': random.randint(1, 6),
            'checkin_date': checkin.strftime('%Y-%m-%d'),
            'gid': gid
        }

    return stay

def generate_room(stid, pkgname, avail=True):
    room_type, room_rate = random.choice([('standard', 60), ('premium', 120), ('deluxe', 200)])

    def room_attr(room_type):
        if room_type == 'standard':
            room_cap, num_beds = random.randint(1,2), 1
        elif room_type == 'premium':
            room_cap = random.randint(1, 3)
            num_beds = 1 if room_cap == 1 else 2 if room_cap == 3 else random.randint(1,2)
        else:
            room_cap = random.randint(1,4)
            num_beds = 1 if room_cap == 1 else 2 if room_cap >= 3 else random.randint(1,2)
        return room_cap, num_beds

    room_cap, num_beds = room_attr(room_type)

    room = {
        'room_number': random.randint(0, MAX_ROOMS),
        'room_capacity': room_cap,
        'number_of_beds': num_beds,
        'daily_rate': room_rate,
        'type': room_type,
        'availability': avail,
        'stid': stid,
        'name': pkgname
    }

    return room

def generate_vip_guest(gid):
    vip = {
        'date_joined': random_date('2000-01-01', '2020-01-01').strftime('%Y-%m-%d'),
        'gid': gid
    }

    return vip

def generate_bill(gid, total=None):
    bill = {
        'payment_type': random.choice(['cash', 'credit_card', 'debit_card']),
        'total_amount': total if total is not None else random.random() * 200 + 100,
        'gid': gid
    }

    return bill

def generate_discount(bid, gid, rate=None):
    disc = {
        'rate': random.random() * 0.25 if rate is None or rate > 0.25 or rate < 0 else round(rate, 2),
        'bid': bid,
        'gid': gid
    }

    return disc

def generate_service(stid):
    service = {
        'stid': stid
    }

    return service

def generate_restaurant():
    # Hardcoded because only one restaurant
    restaurant = {
        'name': 'The Grand Gourmet',
        'price_per_person': 20.00,
        'opening_hours': '8:00',
        'closing_hours': '23:00'
    }

    return restaurant

def generate_table(sid, rest_name):
    table = {
        'table_number': random.randint(1, MAX_RES_TABLES), 
        'number_of_seats': random.randint(1,4) * 2, # Multiple of 2
        'availability': True,
        'sid': sid,
        'name': rest_name
    }
    
    return table

def generate_massage(sid):
    mass_type, mass_rate = random.choice([('standard', 10), ('premium', 25), ('deluxe', 50)])

    massage = {
        'duration': random.randint(1,3),
        'type': mass_type,
        'price': mass_rate,
        'sid': sid
    }

    return massage
