CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,
  fname varchar(50),
  date_created timestamp DEFAULT current_timestamp
);