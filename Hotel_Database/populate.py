import random
import datetime as dt

from generator import *
from tables import Table

def num_days(d1, d2):
    d1 = dt.datetime.strptime(d1, '%Y-%m-%d')
    d2 = dt.datetime.strptime(d2, '%Y-%m-%d')

    return (d2 - d1).days

def main():
    # Initialize ID counters
    sid_count = 1
    stid_count = 1
    gid_count = 6
    bid_count = 1

    # Initialize DB tables
    guest_table = Table(None, "guest")
    vip_guest_table = Table(None, "vip_guest")
    stay_table = Table(None, "stays")
    rooms_table = Table(None, "rooms")
    pkgs_table = Table(None, "packages")
    bills_table = Table(None, "bills")
    disc_table = Table(None, "discount")
    restaurant_table = Table(None, "restaurants")

    serv_table = Table(None, "services")
    mass_table = Table(None, "massage")
    tables_table = Table(None, "tables")

    # Generate restaurant
    rest = generate_restaurant()
    restaurant_table.add(rest)

    # Generate packages
    packages = generate_packages()
    for pkg in packages:
        pkgs_table.add(pkg)

    # Generate guests, vip_guests, stays, rooms, services (tables and massages)
    for _ in range(10):
        gid = gid_count
        gid_count += 1

        guest = generate_guest()
        guest_table.add(guest)

        # 25% chance current guest will be vip
        is_vip = random.random() < 0.25
        if is_vip:
            vip_guest = generate_vip_guest(gid)
            vip_guest_table.add(vip_guest)

        # Generate n stays for current guest 
        # (n randomly uniformly distributed between 1 and 3)
        for _ in range(random.randint(1,3)):
            stid = stid_count
            stid_count += 1

            stay = generate_stay(gid)
            stay_table.add(stay)

            # Generate n random rooms
            # (n randomly uniformly distributed between 1 and 2)
            rooms = []
            for _ in range(stay['number_of_rooms']):
                if 'checkout_date' in stay:
                    room = generate_room(stid, random.choice(packages)['name'], avail=True)
                else:
                    room = generate_room(stid, random.choice(packages)['name'], avail=False)

                rooms_table.add(room)
                rooms.append(room)

            # Generate n random massages
            # (n randomly uniformly distributed between 0 and 5)
            massages = []
            for _ in range(random.randint(0,5)):
                sid = sid_count
                sid_count += 1
                serv = generate_service(stid)
                serv_table.add(serv)

                massage = generate_massage(sid)
                mass_table.add(massage)
                massages.append(massage)

            # Generate n table bookings
            # (n randomly uniformly distributed between 0 and 5)
            rest_tables = []
            for _ in range(random.randint(0,5)):
                sid = sid_count
                sid_count += 1
                serv = generate_service(stid)
                serv_table.add(serv)

                table = generate_table(sid, rest['name'])
                tables_table.add(table)

                rest_tables.append(table)
            
            # Generate bill and discount
            if 'checkout_date' in stay:
                bid = bid_count
                bid_count += 1

                room_total = sum([r['daily_rate'] * num_days(stay['checkin_date'], stay['checkout_date']) for r in rooms])
                mass_total = sum([m['price'] * m['duration'] for m in massages])
                rest_total = sum([rest['price_per_person'] * stay['number_of_people'] for _ in rest_tables])
                total = room_total + mass_total + rest_total
                total = round(total, 2)

                if is_vip:
                    discount = generate_discount(bid, gid, rate=num_days(vip_guest['date_joined'], stay['checkout_date']) * 0.001 * 0.25)
                    bill = generate_bill(gid, total=total*(1 - discount['rate']))
                    
                    bills_table.add(bill)
                    disc_table.add(discount)
                else:
                    bill = generate_bill(gid, total=total)
                    bills_table.add(bill)

if __name__ == "__main__":
    main()