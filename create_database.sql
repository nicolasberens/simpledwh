DROP TABLE IF EXISTS tests;
DROP TABLE IF EXISTS testdevices;
DROP TABLE IF EXISTS qaengineers;

CREATE TABLE testdevices (
            testdevice_id SERIAL PRIMARY KEY,
            testdevice_name VARCHAR(255) NOT NULL
        );

CREATE TABLE qaengineers (
            qaengineer_id SERIAL PRIMARY KEY,
            qaengineer_name VARCHAR(255) NOT NULL
        );

CREATE TABLE tests (
            serialnumber SERIAL PRIMARY KEY,
            qaengineer_id SERIAL,
            timestamp TIMESTAMP,
            testvalue_1 DOUBLE PRECISION,
            testdevice_1  SERIAL,
            testvalue_2 DOUBLE PRECISION,
            testdevice_2 SERIAL,
            testvalue_3 DOUBLE PRECISION,
            testdevice_3 SERIAL,
            testvalue_4 DOUBLE PRECISION,
            testdevice_4 SERIAL,
            testvalue_5 DOUBLE PRECISION,
            testdevice_5 SERIAL,
            testvalue_6 DOUBLE PRECISION,
            testdevice_6 SERIAL,
            testvalue_7 DOUBLE PRECISION,
            testdevice_7 SERIAL,
            testvalue_8 DOUBLE PRECISION,
            testdevice_8 SERIAL,
            testvalue_9 DOUBLE PRECISION,
            testdevice_9 SERIAL,
            testvalue_10 DOUBLE PRECISION,
            testdevice_10 SERIAL,
            testvalue_11 DOUBLE PRECISION,
            testdevice_11 SERIAL,
            testvalue_12 DOUBLE PRECISION,
            testdevice_12 SERIAL,
            testvalue_13 DOUBLE PRECISION,
            testdevice_13 SERIAL,
            testvalue_14 DOUBLE PRECISION,
            testdevice_14 SERIAL,
            testvalue_15 DOUBLE PRECISION,
            testdevice_15 SERIAL,
            testvalue_16 DOUBLE PRECISION,
            testdevice_16 SERIAL,
            testvalue_17 DOUBLE PRECISION,
            testdevice_17 SERIAL,
            testvalue_18 DOUBLE PRECISION,
            testdevice_18 SERIAL,
            testvalue_19 DOUBLE PRECISION,
            testdevice_19 SERIAL,

            CONSTRAINT fk_qaengineer FOREIGN KEY(qaengineer_id) REFERENCES qaengineers(qaengineer_id),
            CONSTRAINT fk_testdevice_1 FOREIGN KEY(testdevice_1) REFERENCES testdevices(testdevice_id),
            CONSTRAINT fk_testdevice_2 FOREIGN KEY(testdevice_2) REFERENCES testdevices(testdevice_id),
            CONSTRAINT fk_testdevice_3 FOREIGN KEY(testdevice_3) REFERENCES testdevices(testdevice_id),
            CONSTRAINT fk_testdevice_4 FOREIGN KEY(testdevice_4) REFERENCES testdevices(testdevice_id),
            CONSTRAINT fk_testdevice_5 FOREIGN KEY(testdevice_5) REFERENCES testdevices(testdevice_id),
            CONSTRAINT fk_testdevice_6 FOREIGN KEY(testdevice_6) REFERENCES testdevices(testdevice_id),
            CONSTRAINT fk_testdevice_7 FOREIGN KEY(testdevice_7) REFERENCES testdevices(testdevice_id),
            CONSTRAINT fk_testdevice_8 FOREIGN KEY(testdevice_8) REFERENCES testdevices(testdevice_id),
            CONSTRAINT fk_testdevice_9 FOREIGN KEY(testdevice_9) REFERENCES testdevices(testdevice_id),
            CONSTRAINT fk_testdevice_10 FOREIGN KEY(testdevice_10) REFERENCES testdevices(testdevice_id),
            CONSTRAINT fk_testdevice_11 FOREIGN KEY(testdevice_11) REFERENCES testdevices(testdevice_id),
            CONSTRAINT fk_testdevice_12 FOREIGN KEY(testdevice_12) REFERENCES testdevices(testdevice_id),
            CONSTRAINT fk_testdevice_13 FOREIGN KEY(testdevice_13) REFERENCES testdevices(testdevice_id),
            CONSTRAINT fk_testdevice_14 FOREIGN KEY(testdevice_14) REFERENCES testdevices(testdevice_id),
            CONSTRAINT fk_testdevice_15 FOREIGN KEY(testdevice_15) REFERENCES testdevices(testdevice_id),
            CONSTRAINT fk_testdevice_16 FOREIGN KEY(testdevice_16) REFERENCES testdevices(testdevice_id),
            CONSTRAINT fk_testdevice_17 FOREIGN KEY(testdevice_17) REFERENCES testdevices(testdevice_id),
            CONSTRAINT fk_testdevice_18 FOREIGN KEY(testdevice_18) REFERENCES testdevices(testdevice_id),
            CONSTRAINT fk_testdevice_19 FOREIGN KEY(testdevice_19) REFERENCES testdevices(testdevice_id)
        );