import config
import psycopg2
import psycopg2.extras
import random
from faker import Faker

fake = Faker()
Faker.seed(0)

try:
    connection = psycopg2.connect(config.database)
    cursor = connection.cursor()

    cursor.execute(open("create_database.sql", "r").read())
    connection.commit()

    print("Populate Engineer Table")
    data = []
    insert_query = "INSERT INTO qaengineers VALUES %s"
    for engineer_id in range(config.no_engineers):
        data.append((engineer_id, fake.name()))
    psycopg2.extras.execute_values(cursor, insert_query, data, template=None, page_size=1000)
    connection.commit()

    print("Populate Devices Table")
    data = []
    insert_query = "INSERT INTO testdevices VALUES %s"
    for device_id in range(config.no_testdevices):
        data.append((device_id, fake.last_name()))
    psycopg2.extras.execute_values(cursor, insert_query, data, template=None, page_size=1000)
    connection.commit()

    print("Populate testdata Table")
    data = []
    insert_query = "INSERT INTO tests VALUES %s"
    for tests in range(config.no_tests):
        data.append((tests, random.randint(0, config.no_engineers - 1), fake.date_time(), random.uniform(0, 100),
                     random.randint(0, config.no_testdevices - 1),
                     random.uniform(0, 100), random.randint(0, config.no_testdevices - 1), random.uniform(0, 100),
                     random.randint(0, config.no_testdevices - 1),
                     random.uniform(0, 100), random.randint(0, config.no_testdevices - 1), random.uniform(0, 100),
                     random.randint(0, config.no_testdevices - 1),
                     random.uniform(0, 100), random.randint(0, config.no_testdevices - 1), random.uniform(0, 100),
                     random.randint(0, config.no_testdevices - 1),
                     random.uniform(0, 100), random.randint(0, config.no_testdevices - 1), random.uniform(0, 100),
                     random.randint(0, config.no_testdevices - 1),
                     random.uniform(0, 100), random.randint(0, config.no_testdevices - 1), random.uniform(0, 100),
                     random.randint(0, config.no_testdevices - 1),
                     random.uniform(0, 100), random.randint(0, config.no_testdevices - 1), random.uniform(0, 100),
                     random.randint(0, config.no_testdevices - 1),
                     random.uniform(0, 100), random.randint(0, config.no_testdevices - 1), random.uniform(0, 100),
                     random.randint(0, config.no_testdevices - 1),
                     random.uniform(0, 100), random.randint(0, config.no_testdevices - 1), random.uniform(0, 100),
                     random.randint(0, config.no_testdevices - 1),
                     random.uniform(0, 100), random.randint(0, config.no_testdevices - 1), random.uniform(0, 100),
                     random.randint(0, config.no_testdevices - 1),
                     ))
    psycopg2.extras.execute_values(cursor, insert_query, data, template=None, page_size=1000)
    connection.commit()


except (Exception, psycopg2.Error) as error:
    print("Error while connecting to PostgreSQL", error)
