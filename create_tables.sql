DROP TABLE IF EXISTS tram_compositions, tramways CASCADE;

CREATE TABLE tramways (
    Tram_ID SERIAL PRIMARY KEY,
    Depot_ID INTEGER,
    Model VARCHAR(100),
    Production_Year INTEGER,
    Last_Repair_Date DATE,
    Total_Seats INTEGER,
    Seated_Seats INTEGER,
    Length NUMERIC(5,2),
    Trucks_Count INTEGER,
    Sections_Count INTEGER
);

CREATE TABLE tram_compositions (
    Composition_ID SERIAL PRIMARY KEY,
    Tram_ID INTEGER REFERENCES tramways(Tram_ID) ON DELETE CASCADE,
    Leading_Tram BOOLEAN,
    Position_In_Composition INTEGER
);