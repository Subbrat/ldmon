USE ldmon;

CREATE TABLE user (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  dept INT,
  email VARCHAR(255)
);

CREATE TABLE category (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  dept INT
);

CREATE TABLE department (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  hod INT
);

CREATE TABLE rooms (
  id INT PRIMARY KEY,
  room VARCHAR(255),
  floor INT,
  dept INT
);

CREATE TABLE floor (
  id INT PRIMARY KEY,
  floor VARCHAR(255)
);

CREATE TABLE faculty (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  dept INT,
  email VARCHAR(255)
);

CREATE TABLE funds (
  id INT PRIMARY KEY,
  account INT,
  balance DECIMAL(10, 2)
);

CREATE TABLE reservation (
  id INT PRIMARY KEY,
  user INT,
  `for` INT,
  status INT,
  dept INT,
  faculty INT,
  comment VARCHAR(255),
  related VARCHAR(255)
);

CREATE TABLE peripherals (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  description VARCHAR(255),
  quantity INT,
  `use` INT,
  type VARCHAR(255)
);

CREATE TABLE add_types (
  id INT PRIMARY KEY,
  type VARCHAR(255)
);

CREATE TABLE company (
  id INT PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE refuels (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  incharge VARCHAR(255),
  type VARCHAR(255)
);

CREATE TABLE maintenance (
  id INT PRIMARY KEY,
  uinstid INT,
  date DATE,
  status VARCHAR(255)
);

CREATE TABLE user_verification (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255),
  status INT,
  institute VARCHAR(255),
  instituteid VARCHAR(255),
  date DATETIME
);

CREATE TABLE institutions (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  representative VARCHAR(255),
  email VARCHAR(255)
);

CREATE TABLE log_usage (
  id INT PRIMARY KEY,
  instrument INT,
  `when` DATETIME,
  `by whom` INT,
  guide INT,
  remark TEXT,
  usageid INT
);

CREATE TABLE log_maintenance (
  id INT PRIMARY KEY,
  instrument INT,
  `when` DATETIME,
  `by whom` VARCHAR(255),
  status VARCHAR(255),
  remark TEXT
);

CREATE TABLE log_service (
  id INT PRIMARY KEY,
  instrument INT,
  `when` DATETIME,
  status VARCHAR(255),
  remark TEXT
);

CREATE TABLE log_room_cng (
  id INT PRIMARY KEY,
  instrument INT,
  `from` INT,
  `to` INT,
  remark TEXT
);

CREATE TABLE log_fac_cng_dept (
  id INT PRIMARY KEY,
  depid INT,
  `when` DATETIME,
  `from` INT,
  `to` INT,
  remark TEXT
);

CREATE TABLE log_fac_cng_iid (
  id INT PRIMARY KEY,
  iid VARCHAR(255),
  `when` DATETIME,
  `from` VARCHAR(255),
  `to` VARCHAR(255),
  remark TEXT
);

CREATE TABLE log_prc_cng (
  id INT PRIMARY KEY,
  iid INT,
  utype INT,
  `when` DATETIME,
  `from` DECIMAL(10, 2),
  remark TEXT
);

CREATE TABLE log_transaction (
  id INT PRIMARY KEY,
  account INT,
  type INT,
  amount DECIMAL(10, 2)
);

CREATE TABLE log_refuel_fuel (
  id INT PRIMARY KEY,
  fid INT,
  `when` DATETIME,
  amount DECIMAL(10, 2),
  remark TEXT
);

CREATE TABLE log_refuel_uid (
  id INT PRIMARY KEY,
  uid INT,
  fid INT,
  `when` DATETIME,
  amount DECIMAL(10, 2),
  remark TEXT
);

CREATE TABLE log_refuel_iid (
  id INT PRIMARY KEY,
  iid INT,
  fid INT,
  `when` DATETIME,
  amount DECIMAL(10, 2),
  remark TEXT
);

CREATE TABLE log_us_ver (
  id INT PRIMARY KEY,
  uname TEXT,
  utype TEXT,
  `status` INT
);


-- Table: iid_basic
CREATE TABLE iid_basic (
  id INT PRIMARY KEY,
  iid VARCHAR(255),
  department INT,
  category INT,
  name VARCHAR(255),
  company INT,
  slno VARCHAR(255),
  description VARCHAR(255),
  total_nos INT,
  instructor INT,
  image VARCHAR(255),
  FOREIGN KEY (department) REFERENCES department(id),
  FOREIGN KEY (category) REFERENCES category(id),
  FOREIGN KEY (company) REFERENCES company(id),
  FOREIGN KEY (instructor) REFERENCES faculty(id)
);

-- Table: iid_pricing
CREATE TABLE iid_pricing (
  id INT PRIMARY KEY,
  instrument_id INT,
  price_u1 DECIMAL(10, 2),
  price_u2 DECIMAL(10, 2),
  price_u3 DECIMAL(10, 2),
  price_u4 DECIMAL(10, 2),
  price_u5 DECIMAL(10, 2),
  FOREIGN KEY (instrument_id) REFERENCES iid_basic(id)
);

-- Table: iid_spec
CREATE TABLE iid_spec (
  id INT PRIMARY KEY,
  instrument_id INT,
  week_availability INT,
  cycle_time INT,
  gap_between_cycle INT,
  cycles_per_day INT,
  things_used_as_input_refuel VARCHAR(255),
  unit_refuel_one_maintenance DECIMAL(10, 2),
  unit_used_per_cycle VARCHAR(255),
  cycles_in_one_maintenance_period DECIMAL(10, 2),
  FOREIGN KEY (instrument_id) REFERENCES iid_basic(id)
);

-- Table: iid_vic
CREATE TABLE iid_vic (
  id INT PRIMARY KEY,
  instrument_id INT,
  size VARCHAR(255),
  weight VARCHAR(255),
  power_requirement VARCHAR(255),
  peripheral_requirement INT,
  gas_requirement VARCHAR(255),
  any_base_req VARCHAR(255),
  water_and_drainage_required VARCHAR(255),
  furniture_or_closet VARCHAR(255),
  FOREIGN KEY (instrument_id) REFERENCES iid_basic(id),
  FOREIGN KEY (peripheral_requirement) REFERENCES peripherals(id)
);

-- Table: iid_manual
CREATE TABLE iid_manual (
  id INT PRIMARY KEY,
  instrument_id INT,
  link_to_manual VARCHAR(255),
  template_for_certification VARCHAR(255),
  related_risk_warning VARCHAR(255),
  sops_for_equipment VARCHAR(255),
  equipment_troubleshooting_guides VARCHAR(255),
  FOREIGN KEY (instrument_id) REFERENCES iid_basic(id)
);

-- Table: uid
CREATE TABLE uid (
  id INT PRIMARY KEY,
  instrument_id INT,
  unique_identifier VARCHAR(255),
  FOREIGN KEY (instrument_id) REFERENCES iid_basic(id)
);

-- Table: uid_ot
CREATE TABLE uid_ot (
  id INT PRIMARY KEY,
  instrument_u INT,
  floor INT,
  room VARCHAR(255),
  warranty_date DATE,
  warranty_status VARCHAR(255),
  past_reports_of_malfunction VARCHAR(255),
  any_other_emergency_guide VARCHAR(255),
  FOREIGN KEY (instrument_u) REFERENCES uid(id)
);

-- Table: uid_dyna
CREATE TABLE uid_dyna (
  id INT PRIMARY KEY,
  instrument_u INT,
  last_maintenance_date DATE,
  already_used_cycles INT,
  remaining_cycles INT,
  working_days_now INT,
  next_maintenance_date DATE,
  out_of_service BOOLEAN,
  FOREIGN KEY (instrument_u) REFERENCES uid(id)
);
