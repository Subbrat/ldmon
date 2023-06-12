DROP DATABASE IF EXISTS ldmon;
CREATE DATABASE ldmon;
USE ldmon;
CREATE TABLE members (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  dept INT,
  email VARCHAR(255)
);
CREATE TABLE category (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  dept INT
);
CREATE TABLE department (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  hod INT
);
CREATE TABLE instruments (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  description VARCHAR(255)
);
CREATE TABLE rooms (
  id INT AUTO_INCREMENT PRIMARY KEY,
  room VARCHAR(255),
  floor INT,
  dept INT
);
CREATE TABLE floor (
  id INT AUTO_INCREMENT PRIMARY KEY,
  floor_name VARCHAR(255),
  location VARCHAR (255) NULL
);
CREATE TABLE faculty (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  dept INT,
  email VARCHAR(255)
);
CREATE TABLE funds (
  id INT AUTO_INCREMENT PRIMARY KEY,
  account INT,
  balance DECIMAL(10, 2)
);
CREATE TABLE reservation (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  for_instrument INT,
  status VARCHAR(255),
  dept INT,
  faculty INT,
  comment VARCHAR(255),
  related VARCHAR(255)
);
CREATE TABLE peripherals (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  description VARCHAR(255),
  quantity INT,
  usedfor INT,
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
  status VARCHAR(255)
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
  usageid INT
);
CREATE TABLE log_maintenance (
  id INT AUTO_INCREMENT PRIMARY KEY,
  instrument INT,
  dt DATETIME,
  donby VARCHAR(255),
  status VARCHAR(255),
  remark TEXT
);
CREATE TABLE log_service (
  id INT AUTO_INCREMENT PRIMARY KEY,
  instrument INT,
  dt DATETIME,
  status VARCHAR(255),
  remark TEXT
);
CREATE TABLE log_room_cng (
  id INT AUTO_INCREMENT PRIMARY KEY,
  instrument INT,
  vfrom INT,
  vto INT,
  remark TEXT
);
CREATE TABLE log_fac_cng_dept (
  id INT AUTO_INCREMENT PRIMARY KEY,
  depid INT,
  dt DATETIME,
  vfrom INT,
  vto INT,
  remark TEXT
);
CREATE TABLE log_fac_cng_iid (
  id INT AUTO_INCREMENT PRIMARY KEY,
  iid INT,
  dt DATETIME,
  vfrom VARCHAR(255),
  vto VARCHAR(255),
  remark TEXT
);
CREATE TABLE iid_prices (
  id INT AUTO_INCREMENT PRIMARY KEY,
  iid INT,
  price DECIMAL(10, 2)
);
CREATE TABLE log_prc_cng (
  id INT AUTO_INCREMENT PRIMARY KEY,
  iid INT,
  utype INT,
  dt DATETIME,
  vfrom DECIMAL(10, 2),
  remark TEXT
);
CREATE TABLE log_transaction (
  id INT AUTO_INCREMENT PRIMARY KEY,
  account INT,
  t_type INT,
  amount DECIMAL(10, 2)
);
CREATE TABLE log_refuel_fuel (
  id INT AUTO_INCREMENT PRIMARY KEY,
  fid INT,
  dt DATETIME,
  amount DECIMAL(10, 2),
  remark TEXT
);
CREATE TABLE log_refuel_uid (
  id INT AUTO_INCREMENT PRIMARY KEY,
  uid INT,
  fid INT,
  dt DATETIME,
  amount DECIMAL(10, 2),
  remark TEXT
);
CREATE TABLE log_refuel_iid (
  id INT AUTO_INCREMENT PRIMARY KEY,
  iid INT,
  fid INT,
  dt DATETIME,
  amount DECIMAL(10, 2),
  remark TEXT
);
CREATE TABLE log_us_ver (
  id INT AUTO_INCREMENT PRIMARY KEY,
  uname TEXT,
  utype TEXT,
  status INT
);
CREATE TABLE iid_basic (
  id INT AUTO_INCREMENT PRIMARY KEY,
  iid VARCHAR(255),
  department INT,
  category INT,
  name VARCHAR(255),
  company INT,
  slno VARCHAR(255),
  description VARCHAR(255),
  total_nos INT,
  instructor INT,
  image VARCHAR(255)
);
CREATE TABLE iid_pricing (
  id INT AUTO_INCREMENT PRIMARY KEY,
  instrument INT,
  price_u1 DECIMAL(10, 2),
  price_u2 DECIMAL(10, 2),
  price_u3 DECIMAL(10, 2),
  price_u4 DECIMAL(10, 2),
  price_u5 DECIMAL(10, 2)
);
CREATE TABLE iid_spec (
  id INT AUTO_INCREMENT PRIMARY KEY,
  instrument INT,
  week_availability INT,
  cycle_time INT,
  gap_between_cycle INT,
  cycles_per_day INT,
  things_used_as_input_refuel VARCHAR(255),
  unit_refuel_one_maintenance DECIMAL(10, 2),
  unit_used_per_cycle VARCHAR(255),
  cycles_in_one_maintenance_period DECIMAL(10, 2)
);
CREATE TABLE iid_vic (
  id INT AUTO_INCREMENT PRIMARY KEY,
  instrument INT,
  size VARCHAR(255),
  weight VARCHAR(255),
  power_requirement VARCHAR(255),
  peripheral_requirement INT,
  gas_requirement VARCHAR(255),
  any_base_req VARCHAR(255),
  water_and_drainage_required VARCHAR(255),
  furniture_or_closet VARCHAR(255)
);
CREATE TABLE iid_manual (
  id INT AUTO_INCREMENT PRIMARY KEY,
  instrument INT,
  link_to_manual VARCHAR(255),
  template_for_certification VARCHAR(255),
  related_risk_warning VARCHAR(255),
  sops_for_equipment VARCHAR(255),
  equipment_troubleshooting_guides VARCHAR(255)
);
CREATE TABLE uid (
  id INT AUTO_INCREMENT PRIMARY KEY,
  instrument INT,
  unique_identifier VARCHAR(255)
);
CREATE TABLE uid_ot (
  id INT AUTO_INCREMENT PRIMARY KEY,
  instrument_u INT,
  floor INT,
  room VARCHAR(255),
  warranty_date DATE,
  warranty_status VARCHAR(255),
  past_reports_of_malfunction VARCHAR(255),
  any_other_emergency_guide VARCHAR(255)
);
CREATE TABLE uid_dyna (
  id INT AUTO_INCREMENT PRIMARY KEY,
  instrument_u INT,
  last_maintenance_date DATE,
  already_used_cycles INT,
  remaining_cycles INT,
  working_days_now INT,
  next_maintenance_date DATE,
  out_of_service BOOLEAN
);
ALTER TABLE members
ADD FOREIGN KEY (dept) REFERENCES department(id);
ALTER TABLE category
ADD FOREIGN KEY (dept) REFERENCES department(id);
ALTER TABLE department
ADD FOREIGN KEY (hod) REFERENCES faculty(id);
ALTER TABLE rooms
ADD FOREIGN KEY (floor) REFERENCES floor(id),
ADD FOREIGN KEY (dept) REFERENCES department(id);
ALTER TABLE faculty
ADD FOREIGN KEY (dept) REFERENCES department(id);
ALTER TABLE funds
ADD FOREIGN KEY (account) REFERENCES members(id);
ALTER TABLE reservation
ADD FOREIGN KEY (user_id) REFERENCES members(id),
ADD FOREIGN KEY (for_instrument) REFERENCES instruments(id),
ADD FOREIGN KEY (dept) REFERENCES department(id),
ADD FOREIGN KEY (faculty) REFERENCES faculty(id);
ALTER TABLE maintenance
ADD FOREIGN KEY (uinstid) REFERENCES instruments(id);
ALTER TABLE log_usage
ADD FOREIGN KEY (instrument) REFERENCES instruments(id),
ADD FOREIGN KEY (donby) REFERENCES members(id),
ADD FOREIGN KEY (guide) REFERENCES faculty(id);
ALTER TABLE log_maintenance
ADD FOREIGN KEY (instrument) REFERENCES instruments(id);
ALTER TABLE log_service
ADD FOREIGN KEY (instrument) REFERENCES instruments(id);
ALTER TABLE log_room_cng
ADD FOREIGN KEY (instrument) REFERENCES instruments(id),
ADD FOREIGN KEY (vfrom) REFERENCES rooms(id),
ADD FOREIGN KEY (vto) REFERENCES rooms(id);
ALTER TABLE log_fac_cng_dept
ADD FOREIGN KEY (depid) REFERENCES department(id),
ADD FOREIGN KEY (vfrom) REFERENCES faculty(id),
ADD FOREIGN KEY (vto) REFERENCES faculty(id);
ALTER TABLE log_fac_cng_iid
ADD FOREIGN KEY (iid) REFERENCES instruments(id);
ALTER TABLE iid_prices
ADD FOREIGN KEY (iid) REFERENCES instruments(id);
ALTER TABLE log_prc_cng
ADD FOREIGN KEY (iid) REFERENCES instruments(id),
ADD FOREIGN KEY (utype) REFERENCES iid_pricing(id);
ALTER TABLE log_transaction
ADD FOREIGN KEY (account) REFERENCES members(id);
ALTER TABLE log_refuel_fuel
ADD FOREIGN KEY (fid) REFERENCES refuels(id);
ALTER TABLE log_refuel_uid
ADD FOREIGN KEY (uid) REFERENCES instruments(id),
ADD FOREIGN KEY (fid) REFERENCES refuels(id);
ALTER TABLE log_refuel_iid
ADD FOREIGN KEY (iid) REFERENCES instruments(id),
ADD FOREIGN KEY (fid) REFERENCES refuels(id);
ALTER TABLE iid_basic ADD FOREIGN KEY (department) REFERENCES department(id);
ALTER TABLE iid_basic ADD FOREIGN KEY (category) REFERENCES category(id);
ALTER TABLE iid_basic ADD FOREIGN KEY (company) REFERENCES company(id);
ALTER TABLE iid_basic ADD FOREIGN KEY (instructor) REFERENCES faculty(id);
ALTER TABLE iid_pricing ADD FOREIGN KEY (instrument) REFERENCES iid_basic(id);
ALTER TABLE iid_spec ADD FOREIGN KEY (instrument) REFERENCES iid_basic(id);
ALTER TABLE iid_vic ADD FOREIGN KEY (instrument) REFERENCES iid_basic(id);
ALTER TABLE iid_vic ADD FOREIGN KEY (peripheral_requirement) REFERENCES peripherals(id);
ALTER TABLE iid_manual ADD FOREIGN KEY (instrument) REFERENCES iid_basic(id);
ALTER TABLE uid ADD FOREIGN KEY (instrument) REFERENCES iid_basic(id);
ALTER TABLE uid_ot ADD FOREIGN KEY (instrument_u) REFERENCES uid(id);
ALTER TABLE uid_dyna ADD FOREIGN KEY (instrument_u) REFERENCES uid(id);
ALTER TABLE uid_ot ADD FOREIGN KEY (floor) REFERENCES floor(id);
-- initial import --
ALTER TABLE user_verification ADD FOREIGN KEY (instituteid) REFERENCES institutions(id);
DROP TABLE IF EXISTS admins;
CREATE TABLE access(
id INT(11) AUTO_INCREMENT PRIMARY KEY,
name VARCHAR (255),	
password VARCHAR (255),
email VARCHAR (255),
status TINYINT(1),
type INT (10) COMMENT '1-sudo, 2-faculty, 3-user, 4-maintainance'
);
ALTER TABLE `access`
ADD UNIQUE `email` (`email`);
INSERT INTO access (name,password,email,status,type)
VALUES ('s','ap','a@p','1','1');
INSERT INTO access (name,password,email,status,type)
VALUES ('a','sp','s@p','1','2');

-- logs --

CREATE TABLE accesslog (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id VARCHAR(50),
  login_time DATETIME,
  logout_time DATETIME
);
select * from accesslog