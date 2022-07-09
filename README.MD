# SIMPLEQADWH


This is a small script to prove that a simple DataWareHouse to store measurements of devices at the end of a Production run is feasible in Postgres.


We have 3 Tables:


**testdevices:**
A Table with the ID and the name of the device that took the measurement

**qaengineers:**
A Table with the ID and the name of the engineer overseeing the measurement


**tests:**
A Table with the actual tests, it contains 19 measurements in double precision, a timestamp, a serialnumber and the id of the engineer.


## How To use:

- Prepare a Postgres Database and user, and add its connection to the `config.py`
- adjust the numbers of test you want in `config.py`
- install dependencies from `requirements.txt`
- run `create_testdata.py`  **THIS WILL DELETE EXISTING DATA**
