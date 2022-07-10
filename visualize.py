import config
import psycopg2.extras
import matplotlib.pyplot as plt
import pandas.io.sql as sqlio



try:
    connection = psycopg2.connect(config.database)
    cursor = connection.cursor()

    # load all values into a dataframe
    sql1 = "SELECT timestamp, testvalue_1  FROM tests;"
    data = sqlio.read_sql_query(sql1, connection)

    # plot the dataframe
    data.plot(x='timestamp', y='testvalue_1', kind='scatter')


    # get the 95 and 5 percentile
    cursor.execute('select percentile_disc(0.95) within group(order by tests.testvalue_1) from tests;')
    percentile95 = cursor.fetchone()
    cursor.execute('select percentile_disc(0.05) within group(order by tests.testvalue_1) from tests;')
    percentile5 = cursor.fetchone()

    #add percentile as lines
    plt.axhline(y=percentile95, color='r', linestyle='-')
    plt.axhline(y=percentile5, color='r', linestyle='-')

    # print the plot
    plt.show()

except (Exception, psycopg2.Error) as error:
    print("Error while connecting to PostgreSQL", error)

