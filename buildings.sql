CREATE TABLE buildings (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(80) NOT NULL,
  shortname VARCHAR(10) UNIQUE NOT NULL
);

CREATE TABLE rooms (
  number INTEGER,
  buildingid INTEGER,
  seating INTEGER,
  PRIMARY KEY (number, buildingid),
  FOREIGN KEY (buildingid) REFERENCES buildings(id)
);

INSERT INTO buildings (name, shortname) 
VALUES 
('Mary Gates Hall', 'MGH'),
('Raitt Hall', 'RAI');



INSERT INTO rooms (number, buildingid, seating) VALUES (400, 1, 40); 
INSERT INTO rooms (number, buildingid, seating) VALUES (101, 2, 25); 
