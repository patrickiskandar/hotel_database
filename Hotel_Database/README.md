# COMP421_Hotel_System

Data generation
====================
For our "creativity points", we decided to implement the two first options, "Automated data generation" and "Real data sets". A dataset of real first and last names was used to generate the names of our guests using a Python program. Our Python program also generated random data that is realistic and consistent for the rest of the attributes and tables.

Note that the script does not insert the data directly into the database. Instead, a `.sql` file is generated which contains `INSERT` statements for all randomly generated data, which can then by run on the database. This was done to avoid compatibility issues with database drivers as well as connection issues with the database. 

Our script requires Python 3, as well as the `pandas` package (to read the name dataset used 
to generate random guests).

To execute our script, simply run the following command: `$ python populate.py`.

This will generate a `populate.sql` file that can be executed on the database to fill up the tables.<br>

The script is homemade, as such, there is no need for citations.

The dataset for the first and last names was found at https://github.com/philipperemy/name-dataset/tree/master/names_dataset.