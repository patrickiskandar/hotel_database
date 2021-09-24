import os
import re
from datetime import datetime, date

import psycopg2
import sys


# Run configuration: environment variables: PYTHONUNBUFFERED=1;TERM=xterm-color

def main_menu():
    os.system('clear')

    print("Welcome to the Grand Hotel!\n")
    print("Please choose a menu item (type in the number):")
    print(
        """\t1. Create a guest account.
    2. Update a guest account.
    3. Check for available rooms.
    4. Make a service reservation.
    5. Check-in.
    0. Quit."""
    )

    choice = input("Menu choice: ")
    print()

    exec_menu(choice)

    return


def exec_menu(choice):
    os.system('clear')
    ch = choice.lower()

    if ch == '':
        menu_actions['main_menu']()
    else:
        try:
            menu_actions[ch]()
        except KeyError:
            print("Invalid selection, please try again.\n")
            menu_actions['main_menu']()

    return


def menu1():
    print("Create a guest account.")
    print("1.1. Proceed.")
    print("9. Back.")
    print("0. Quit.")

    choice = input("Menu choice: ")
    print()

    exec_menu(choice)

    return


def menu1_proceed():
    print("Please provide us with some information so that we can create an account for you.")

    full_name = input("Your full name: ")

    while not all(x.isalpha() or x.isspace() for x in full_name):
        full_name = input("Please input a valid name: ")

    date_of_birth = input("Birthday (YYYY-MM-DD): ")

    while True:
        try:
            datetime.strptime(date_of_birth, '%Y-%m-%d')
            break
        except ValueError:
            date_of_birth = input("Please input a valid date format: ")

    email_address = input("Email address: ")

    # Check for email to be valid.
    loop_condition = True
    r = '^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$'

    while loop_condition:
        if not re.search(r, email_address):
            email_address = input("Please input a valid email address: ")
        else:
            break

    cc_number = input("Credit card number (no spaces): ")

    # Check for cc to be valid.
    loop_condition = True

    while loop_condition:
        if not len(cc_number) == 16 or not cc_number.isdigit():
            cc_number = input("Please input a valid credit card number: ")
        else:
            break

    pp_number = input("Passport number: ")

    while not pp_number.isalnum():
        pp_number = input("Please input a valid passport number: ")

    # DB
    menu1_db(full_name, date_of_birth, email_address, cc_number, pp_number)

    return


def menu1_db(full_name, date_of_birth, email_address, cc_number, pp_number):
    try:
        connection = connect_db()
        cursor = connection.cursor()

        sql_query = """INSERT INTO guest (name, credit_card_number, email_address, passport_number, date_of_birth) 
        VALUES (%s, %s, %s, %s, %s)"""
        sql_values = (str(full_name), int(cc_number), str(email_address), str(pp_number), str(date_of_birth))

        cursor.execute(sql_query, sql_values)
        connection.commit()

    except (Exception, psycopg2.Error) as err:
        if connection:
            print(err)
    finally:
        if connection:
            cursor.close()
            connection.close()
            print("Success")
            main_menu()

    return


def menu2():
    print("Update a guest account.")
    print("2.1. Proceed.")
    print("9. Back.")
    print("0. Quit.")

    choice = input("Menu choice: ")
    print()

    exec_menu(choice)

    return


def menu2_proceed():
    gid_input = input("Please input your GID number: ")
    while not gid_input.isdigit():
        gid_input = input("Please input a valid GID number: ")

    print("Enter the new information in the fields that you would like to update (leave blank to not modify).")

    updated_full_name = input("Your full name: ")

    if updated_full_name == "" or updated_full_name == " " or len(updated_full_name) == 0:
        pass
    else:
        while not all(x.isalpha() or x.isspace() for x in updated_full_name):
            updated_full_name = input("Please input a valid name: ")

    updated_date_of_birth = input("Birthday (YYYY-MM-DD): ")

    if updated_date_of_birth == "" or updated_date_of_birth == " " or len(updated_date_of_birth) == 0:
        pass
    else:
        while True:
            try:
                datetime.strptime(updated_date_of_birth, '%Y-%m-%d')
                break
            except ValueError:
                updated_date_of_birth = input("Please input a valid date format: ")

    updated_email_address = input("Email address: ")

    # Check for email to be valid.
    loop_condition = True
    r = '^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$'

    if updated_email_address == "" or updated_email_address == " " or len(updated_email_address) == 0:
        pass
    else:
        while loop_condition:
            if not re.search(r, updated_email_address):
                updated_email_address = input("Please input a valid email address: ")
            else:
                break

    updated_cc_number = input("Credit card number: ")

    if updated_cc_number == "" or updated_cc_number == " " or len(updated_cc_number) == 0:
        pass
    else:
        while loop_condition:
            if not len(updated_cc_number) == 16 or not updated_cc_number.isdigit():
                updated_cc_number = input("Please input a valid credit card number: ")
            else:
                break

    updated_pp_number = input("Passport number: ")

    if updated_pp_number == "" or updated_pp_number == " " or len(updated_pp_number) == 0:
        pass
    else:
        while not updated_pp_number.isalnum():
            updated_pp_number = input("Please input a valid passport number: ")

    menu2_db(updated_full_name, updated_date_of_birth, updated_email_address, updated_cc_number, updated_pp_number,
             gid_input)

    return


def menu2_db(updated_full_name, updated_date_of_birth, updated_email_address, updated_cc_number, updated_pp_number,
             gid_input):
    try:
        connection = connect_db()
        cursor = connection.cursor()

        if not len(str(updated_full_name)) == 0:
            sql_query = "UPDATE guest SET name = %s WHERE gid = %s"
            sql_values = (str(updated_full_name), int(gid_input))

            cursor.execute(sql_query, sql_values)
        if not len(str(updated_date_of_birth)) == 0:
            sql_query = "UPDATE guest SET date_of_birth = %s WHERE gid = %s"
            sql_values = (str(updated_date_of_birth), int(gid_input))

            cursor.execute(sql_query, sql_values)
        if not len(str(updated_email_address)) == 0:
            sql_query = "UPDATE guest SET email_address = %s WHERE gid = %s"
            sql_values = (str(updated_email_address), int(gid_input))

            cursor.execute(sql_query, sql_values)
        if not len(str(updated_cc_number)) == 0:
            sql_query = "UPDATE guest SET credit_card_number = %s WHERE gid = %s"
            sql_values = (str(updated_cc_number), int(gid_input))

            cursor.execute(sql_query, sql_values)
        if not len(str(updated_pp_number)) == 0:
            sql_query = "UPDATE guest SET passport_number = %s WHERE gid = %s"
            sql_values = (str(updated_pp_number), int(gid_input))

            cursor.execute(sql_query, sql_values)

        connection.commit()

        print(cursor.rowcount, "record affected")

    except (Exception, psycopg2.Error) as err:
        if connection:
            print(err)
    finally:
        if connection:
            cursor.close()
            connection.close()
            print("Success")
            main_menu()

    return


def menu3():
    print("Check for available rooms.")
    print("3.1. Proceed.")
    print("9. Back.")
    print("0. Quit.")

    choice = input("Menu choice: ")
    print()

    exec_menu(choice)

    return


def menu3_proceed():
    requested_capacity = input("Please enter the room capacity you are looking for: ")

    while not requested_capacity.isdigit():
        requested_capacity = input("Please enter a valid number: ")

    menu3_db(requested_capacity)

    return


def menu3_db(requested_capacity):
    try:
        connection = connect_db()
        cursor = connection.cursor()

        sql_query = """SELECT r.room_number, r.number_of_beds, r.daily_rate, r.type, r.name
                    FROM rooms r
                    WHERE r.room_capacity = %s AND r.availability = False
                    ORDER BY r.daily_rate, r.room_number"""
        sql_values = requested_capacity

        cursor.execute(sql_query, sql_values)

        columns = [i[0] for i in cursor.description]
        print(columns)
        for row in cursor:
            print(row)

        connection.commit()

        cursor.close()

    except (Exception, psycopg2.Error) as err:
        if connection:
            print(err)
    finally:
        if connection:
            cursor.close()
            connection.close()
            print("Success")
            main_menu()

    return


def menu4():
    print("Make a service reservation.")
    print("4.1. Proceed.")
    print("9. Back.")
    print("0. Quit.")

    choice = input("Menu choice: ")
    print()

    exec_menu(choice)

    return


def menu4_proceed():
    print("1. The restaurant.")
    print("2. A massage.")
    option_input = input("Choose the service you would like to make a reservation on: ")

    while not option_input.isdigit():
        option_input = input("Please select a valid option: ")

    if int(option_input) == 1:
        stid_input = input("Please input your stay ID number: ")

        while not stid_input.isdigit():
            stid_input = input("Please input a valid stay ID number: ")

        num_seats = input("Please input number of seats needed: ")

        while not num_seats.isdigit():
            num_seats = input("Please input a valid integer: ")

        menu4_db_restaurant(stid_input, num_seats)
    elif int(option_input) == 2:
        stid_input = input("Please input your stay ID number: ")

        while not stid_input.isdigit():
            stid_input = input("Please input a valid stay ID number: ")

        type_input = input("Enter type of massage you would like to reserve (Standard, Deluxe, or Premium): ")

        while not type_input.isalpha():
            type_input = input("Please input a valid type: ")
        while not (type_input == 'Standard' or type_input == 'Deluxe' or type_input == 'Premium'):
            type_input = input("Please input a valid type: ")

        duration_input = input("Enter desired duration of massage (in hours): ")

        while not duration_input.isdigit():
            duration_input = input("Please input a valid duration: ")

        if type_input == 'Standard':
            price = 10
        elif type_input == 'Deluxe':
            price = 25
        elif type_input == 'Premium':
            price = 50

        menu4_db_massage(stid_input, type_input, duration_input, price)

    return


def menu4_db_restaurant(stid_input, num_seats):
    try:
        connection = connect_db()
        cursor = connection.cursor()

        sql_query = "INSERT INTO services (stid) VALUES (%s)"
        sql_values = (stid_input,)

        cursor.execute(sql_query, sql_values)
        connection.commit()

        sql_query = "SELECT MAX(sid) FROM services WHERE stid = %s"
        sql_values = (stid_input,)

        cursor.execute(sql_query, sql_values)
        mysid = cursor.fetchone()

        sql_query = "SELECT table_number FROM tables WHERE availability = %s LIMIT 1"
        sql_values = 't'

        cursor.execute(sql_query, sql_values)
        table_num = cursor.fetchone()

        sql_query = "INSERT INTO tables (table_number, number_of_seats, availability, sid) VALUES (%s, %s, %s, %s)"
        sql_values = (table_num, num_seats, 'f', mysid)

        cursor.execute(sql_query, sql_values)
        connection.commit()

    except (Exception, psycopg2.Error) as err:
        if connection:
            print(err)
    finally:
        if connection:
            cursor.close()
            connection.close()
            print("Success")
            main_menu()

    return


def menu4_db_massage(stid_input, type_input, duration_input, price):
    try:
        connection = connect_db()
        cursor = connection.cursor()

        sql_query = "INSERT INTO services (stid) VALUES (%s)"
        sql_values = (stid_input,)

        cursor.execute(sql_query, sql_values)
        connection.commit()

        sql_query = "SELECT MAX(sid) FROM services WHERE stid = %s"
        sql_values = (stid_input,)

        cursor.execute(sql_query, sql_values)
        mysid = cursor.fetchone()

        sql_query = "INSERT INTO massage (duration, type, price, sid) VALUES (%s, %s, %s, %s)"
        sql_values = (duration_input, type_input, price, mysid)

        cursor.execute(sql_query, sql_values)
        connection.commit()

    except (Exception, psycopg2.Error) as err:
        if connection:
            print(err)
    finally:
        if connection:
            cursor.close()
            connection.close()
            print("Success")
            main_menu()

    return


def menu5():
    print("Check-in.")
    print("5.1. Proceed.")
    print("9. Back.")
    print("0. Quit.")

    choice = input("Menu choice: ")
    print()

    exec_menu(choice)

    return


def menu5_proceed():
    gid_input = input("Please input your GID number: ")

    while not gid_input.isdigit():
        gid_input = input("Please input a valid GID number: ")

    num_rooms = input("Please input the number of rooms required: ")

    while not num_rooms.isdigit():
        num_rooms = input("Please input a valid number: ")

    num_people = input("Please input the number of people in your stay: ")

    while not num_people.isdigit():
        num_people = input("Please input a valid number: ")

    today = date.today()
    today_date = today.strftime('%Y-%m-%d')

    menu5_db(gid_input, num_rooms, num_people, today_date)

    return


def menu5_db(gid_input, num_rooms, num_people, today_date):
    try:
        connection = connect_db()
        cursor = connection.cursor()

        sql_query = "INSERT INTO stays (number_of_rooms, number_of_people, gid, checkin_date) VALUES (%s, %s, %s, %s)"
        sql_values = (num_rooms, num_people, gid_input, today_date,)

        cursor.execute(sql_query, sql_values)
        connection.commit()

        print(cursor.rowcount, "record affected")

    except (Exception, psycopg2.Error) as err:
        if connection:
            print(err)
    finally:
        if connection:
            cursor.close()
            connection.close()
            print("Success")
            main_menu()

    return


def back():
    menu_actions['main_menu']()


def exit_menu():
    sys.exit()


def connect_db():
    return psycopg2.connect(host="comp421.cs.mcgill.ca",
                            database="cs421",
                            user="cs421g79",
                            password="Bestteamever79",
                            port="5432",
                            sslmode="require"
                            )


menu_actions = {
    'main_menu': main_menu,
    '1': menu1,
    '2': menu2,
    '3': menu3,
    '4': menu4,
    '5': menu5,
    '9': back,
    '0': exit_menu,
    '1.1': menu1_proceed,
    '2.1': menu2_proceed,
    '3.1': menu3_proceed,
    '4.1': menu4_proceed,
    '5.1': menu5_proceed
}

if __name__ == "__main__":
    main_menu()
