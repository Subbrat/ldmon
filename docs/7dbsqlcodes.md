# SQL CODES FOR DATABASE IMPORT
## Bases
---
1. [instrument](#instrument)<br>
   a. category - [groups/ IID](#instrument_IID) <br>
      + [| basics](#basics)<br>
      + [| specification](#general_specifications) <br>
      + [| vicinity](#vicinity) <br>
      + [| manual](#manual)<br>
   b. category - [individuals/ UID](#instrument_UID) <br>
      + [| static](#static)<br>
      + [| dynamic](#dynamic) <br>
---
   1. [refuels](#refuels)
      a. [Refuel Log (For UIDS)](#refuel-log-for-uids)<br>
      a. [Refuel Log (For Fuel)](#refuel-log-for-fuel)<br>
      a. [Refuel Log (For IIDS)](#refuel-log-for-iids)<br>
---
   1. [logs](#logs)<br>
      a. [Usage Log](#usage-log)<br>
      a. [Maintenance Log](#maintenance-log)<br>
      a. [Service Log](#service-log)<br>
      a. [Room Change Log](#room-change-log)<br>
      a. [Faculty Change Log for department](#faculty-change-log-for-department)<br>
      a. [Faculty Change Log for IID](#faculty-change-log-for-iid)<br>
      a. [Price Change Log](#price-change-log)<br>
---
## Tables
1. [instrument](#instrument)
2. [users](#users)
3. [category](#category)
4. [department](#department)
5. [rooms](#rooms)
6. [floor](#floor)
7. [faculty](#faculty)
8. [finance](#finance)
9. [reservations](#reservations)
10. [pricing](#pricing)
11. [maintainance](#maintainance)
12. [user verification](#userverification)
13. [institutions](#institutions)


CREATE TABLE members (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  dept INT,
  email VARCHAR(255),
  FOREIGN KEY (dept) REFERENCES department(id)
);

CREATE TABLE category (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  dept INT,
  FOREIGN KEY (dept) REFERENCES department(id)
);

CREATE TABLE department (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  hod INT,
  FOREIGN KEY (hod) REFERENCES faculty(id)
);

CREATE TABLE rooms (
  id INT AUTO_INCREMENT PRIMARY KEY,
  room VARCHAR(255),
  floor INT,
  dept INT,
  FOREIGN KEY (floor) REFERENCES floor(id),
  FOREIGN KEY (dept) REFERENCES department(id)
);

CREATE TABLE floor (
  id INT AUTO_INCREMENT PRIMARY KEY,
  floor_name VARCHAR(255)
);

CREATE TABLE faculty (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  dept INT,
  email VARCHAR(255),
  FOREIGN KEY (dept) REFERENCES department(id)
);

CREATE TABLE funds (
  id INT AUTO_INCREMENT PRIMARY KEY,
  account INT,
  balance DECIMAL(10, 2),
  FOREIGN KEY (account) REFERENCES user(id)
);

CREATE TABLE reservation (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  for_instrument INT,
  status VARCHAR(255),
  dept INT,
  faculty INT,
  comment VARCHAR(255),
  related VARCHAR(255),
  FOREIGN KEY (user_id) REFERENCES user(id),
  FOREIGN KEY (for_instrument) REFERENCES instruments(id),
  FOREIGN KEY (dept) REFERENCES department(id),
  FOREIGN KEY (faculty) REFERENCES faculty(id)
);

CREATE TABLE peripherals (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  description VARCHAR(255),
  quantity INT,
  use INT,
  type VARCHAR(255)
);

CREATE TABLE add_types (
  id INT AUTO_INCREMENT PRIMARY KEY,
  type VARCHAR(255)
);

CREATE TABLE company (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE refuels (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  incharge VARCHAR(255),
  type VARCHAR(255)
);

CREATE TABLE maintenance (
  id INT AUTO_INCREMENT PRIMARY KEY,
  uinstid INT,
  date DATE,
  status VARCHAR(255),
  FOREIGN KEY (uinstid) REFERENCES instruments(id)
);

CREATE TABLE user_verification (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255),
  status INT,
  institute VARCHAR(255),
  instituteid INT,
  date DATETIME
);

CREATE TABLE institutions (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  representative VARCHAR(255),
  email VARCHAR(255)
);

CREATE TABLE log_usage (
  id INT AUTO_INCREMENT PRIMARY KEY,
  instrument INT,
  dt DATETIME,
  donby INT,
  guide INT,
  remark TEXT,
  usageid INT,
  FOREIGN KEY (instrument) REFERENCES instruments(id),
  FOREIGN KEY (donby) REFERENCES user(id),
  FOREIGN KEY (guide) REFERENCES faculty(id)
);

CREATE TABLE log_maintenance (
  id INT AUTO_INCREMENT PRIMARY KEY,
  instrument INT,
  dt DATETIME,
  donby VARCHAR(255),
  status VARCHAR(255),
  remark TEXT,
  FOREIGN KEY (instrument) REFERENCES instruments(id)
);

CREATE TABLE log_service (
  id INT AUTO_INCREMENT PRIMARY KEY,
  instrument INT,
  dt DATETIME,
  status VARCHAR(255),
  remark TEXT,
  FOREIGN KEY (instrument) REFERENCES instruments(id)
);

CREATE TABLE log_room_cng (
  id INT AUTO_INCREMENT PRIMARY KEY,
  instrument INT,
  vfrom INT,
  vto INT,
  remark TEXT,
  FOREIGN KEY (instrument) REFERENCES instruments(id),
  FOREIGN KEY (vfrom) REFERENCES rooms(id),
  FOREIGN KEY (vto) REFERENCES rooms(id)
);

CREATE TABLE log_fac_cng_dept (
  id INT AUTO_INCREMENT PRIMARY KEY,
  depid INT,
  dt DATETIME,
  vfrom INT,
  vto INT,
  remark TEXT,
  FOREIGN KEY (depid) REFERENCES department(id),
  FOREIGN KEY (vfrom) REFERENCES faculty(id),
  FOREIGN KEY (vto) REFERENCES faculty(id)
);

CREATE TABLE log_fac_cng_iid (
  id INT AUTO_INCREMENT PRIMARY KEY,
  iid INT,
  dt DATETIME,
  vfrom VARCHAR(255),
  vto VARCHAR(255),
  remark TEXT,
  FOREIGN KEY (iid) REFERENCES instruments(id)
);

CREATE TABLE log_prc_cng (
  id INT AUTO_INCREMENT PRIMARY KEY,
  iid INT,
  utype INT,
  dt DATETIME,
  vfrom DECIMAL(10, 2),
  remark TEXT,
  FOREIGN KEY (iid) REFERENCES instruments(id),
  FOREIGN KEY (utype) REFERENCES iid_pricing(id)
);

CREATE TABLE log_transaction (
  id INT AUTO_INCREMENT PRIMARY KEY,
  account INT,
  t_type INT,
  amount DECIMAL(10, 2),
  FOREIGN KEY (account) REFERENCES members(id)
);

CREATE TABLE log_refuel_fuel (
  id INT AUTO_INCREMENT PRIMARY KEY,
  fid INT,
  dt DATETIME,
  amount DECIMAL(10, 2),
  remark TEXT,
  FOREIGN KEY (fid) REFERENCES refuels(id)
);

CREATE TABLE log_refuel_uid (
  id INT AUTO_INCREMENT PRIMARY KEY,
  uid INT,
  fid INT,
  dt DATETIME,
  amount DECIMAL(10, 2),
  remark TEXT,
  FOREIGN KEY (uid) REFERENCES instruments(id),
  FOREIGN KEY (fid) REFERENCES refuels(id)
);

CREATE TABLE log_refuel_iid (
  id INT AUTO_INCREMENT PRIMARY KEY,
  iid INT,
  fid INT,
  dt DATETIME,
  amount DECIMAL(10, 2),
  remark TEXT,
  FOREIGN KEY (iid) REFERENCES instruments(id),
  FOREIGN KEY (fid) REFERENCES refuels(id)
);

CREATE TABLE log_us_ver (
  id INT AUTO_INCREMENT PRIMARY KEY,
  uname TEXT,
  utype TEXT,
  status INT
);