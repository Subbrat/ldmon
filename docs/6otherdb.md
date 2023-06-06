## user
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id/ primary key | INT |
| name | name of user | VARCHAR |
| dept | foreign key table : department, refernce-id | INT |
| email | email | VARCHAR |

## category
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id/ primary key | INT |
| name | name | VARCHAR |
| dept | dept : foreign key from table : department-id | INT |

## department
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id/ primary key | INT |
| name | name | VARCHAR |
| hod | name of hod : foreign key from table : faculty, ref-id | INT |

## rooms
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id/ primary key | INT |
| room | room_name or number | VARCHAR |
| floor | floor number : foreign key from table : floor, ref-id | INT |
| dept | assigned dept : foreign key from table : department, ref-id | INT |
<!-- we may add which room has how many tables of which size and room dimensions? -->

## floor
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id/ primary key | INT |
| floor | floor name/ number | VARCHAR |

## faculty
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id/ primary key | INT |
| name | name | VARCHAR |
| dept | foreign key from table : department, ref- id | INT |
| email | email | VARCHAR |

## funds
| column name | description | datatype |
|--|--|--|
| id | id / primary key | INT |
|account | foreign key from table : user,ref - id  | INT |
|balance|present amount balanace|decimal|

## reservation
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id / primary key | INT |
| user | foreign key from table: user, ref-id | INT |
| for | foreign key from table: instruments, ref-id | INT |
| status | approved/ cancelled/ pending | INT |
| dept | foreign key from table: department, ref-id | INT |
| faculty | foreign key from table: faculty, ref-id | INT |
| comment | any comment for the same | varchar |
| related | any link for the same | varchar |


## Peripherals
| Column | Description | Data Type |
|--------|-------------|-----------|
| id | Unique ID / Primary Key | INT |
| name | Peripheral Name | VARCHAR |
| description | Description | varchar |
| quantity | Quantity | INT |
| use | how many in use | INT |
| type | type | VARCHAR |

## add_types
| id | Unique ID / Primary Key | INT |
| type | Peripheral type | VARCHAR |

## refuels
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id / primary key | INT |
| name | name of the fuel | VARCHAR |
| incharge | name of incharge if any | VARCHAR |
| type | type of fuel | VARCHAR |

## maintenance
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id / primary key | INT |
| uinstid | instrument unique id, foreign key from table, ref-UID | INT |
| date | date of task | DATE |
| status | if done/failed/ upcoming | VARCHAR |

## user_verification
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id / primary key | INT |
| name | | VARCHAR |
| email | | VARCHAR |
| status | Status of verification | int |
| institute | institute name - fkey from table:inst | VARCHAR |
| instituteid | foreign key from table-inst, ref -id | VARCHAR |
| date | when they applied for verification, date time | DATETIME |

## institutions
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id / primary key | INT |
| name | | VARCHAR |
| representative | | VARCHAR |
| email | | VARCHAR |

## LOG Tables

### log_Usage
| column name | description | data type |
|-------------|-------------|-----------|
| id | ID of the usage log | INT |
| instrument | uid of the inst, foreign key - UID, ref-id | int |
| when | Date and time of the usage | DATETIME |
| by whom | User who performed the usage, foreign key users, ref-id | INT |
| guide | Student associated with the usage,  foreign key faculty, ref-id | INT |
| remark | Additional remarks or comments | TEXT |
| usageid | ID of the usage record | INT |

### log_Maintenance
| column name | description | data type |
|-------------|-------------|-----------|
| id | ID of the maintenance log | INT |
| instrument | uid of the inst, foreign key - UID, ref-id | int |
| when | Date and time of the maintenance | DATETIME |
| by whom | User who performed the maintenance | VARCHAR |
| status | Status of the maintenance (done/failed) | VARCHAR |
| remark | Additional remarks or comments | TEXT |

### log_Service
| column name | description | data type |
|-------------|-------------|-----------|
| id | ID of the service log | INT |
| instrument | uid of the inst, foreign key - UID, ref-id | int |
| when | Date and time of the service | DATETIME |
| status | Status of the service | VARCHAR |
| remark | Additional remarks or comments | TEXT |

### log_Room_Cng
| column name | description | data type |
|-------------|-------------|-----------|
| id | ID of the room change log | INT |
| instrument | uid of the inst, foreign key - UID, ref-id | int |
| from | foreign key table- room, reference - id | int |
| to | foreign key table- room, reference - id | int |
| remark | Additional remarks or comments | TEXT |

### log_Fac_Cng_dept
| column name | description | data type |
|-------------|-------------|-----------|
| id | ID of the faculty change log | INT |
| depid | dept id :foreign key dept,ref-id | int |
| when | Date and time of the change | DATETIME |
| from | dept id :foreign key faculty,ref-id | int |
| to | dept id :foreign key faculty,ref-id | int |
| remark | Additional remarks or comments | TEXT |

### log_Fac_Cng_iid
| column name | description | data type |
|-------------|-------------|-----------|
| id | ID of the faculty change log | INT |
| iid | Instrument id :foreign key iid_basic, ref-id | VARCHAR |
| when | Date and time of the change | DATETIME |
| from | Previous value | VARCHAR |
| to | New value | VARCHAR |
| remark | Additional remarks or comments | TEXT |

### log_Prc_Cng
| column name | description | data type |
|-------------|-------------|-----------|
| id | ID of the price change log | INT |
| iid | Instrument ID (foreign key table - iid_basic, ref -id)| INT  |
| utype | usertype (foreign key from iid_pricing, ref- id) |
| when | Date and time of the change | DATETIME |
| from | Previous price | DECIMAL |
| remark | Additional remarks or comments | TEXT |

### log_transaction
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id/ primary key | INT |
| account | foreign key from user, ref -id  | INT |
| type | is that credit or debit | int |
| amount | amount of transaction | DECIMAL |

### log_Refuel_fuel
| column name | description | data type |
|-------------|-------------|-----------|
| id | ID of the refuel log | INT |
| fid | Fuel ID (foreign key referencing fuel table, ref - id) | INT |
| when | Date and time of the refuel | DATETIME |
| amount | Amount of fuel refueled | DECIMAL |
| remark | Additional remarks or comments | TEXT |

### log_Refuel_uid
| column name | description | data type |
|-------------|-------------|-----------|
| id | ID of the refuel log | INT |
| uid | UID (Unique Instrument ID) (foreign key table- ) | INT |
| fid | Fuel ID | INT (foreign key referencing fuel table) |
| when | Date and time of the refuel | DATETIME |
| amount | Amount of fuel refueled | DECIMAL |
| remark | Additional remarks or comments | TEXT |

### log_Refuel_iid
| column name | description | data type |
|-------------|-------------|-----------|
| id | ID of the refuel log | INT |
| iid | Instrument ID | INT (foreign key referencing instruments table) |
| fid | Fuel ID | INT (foreign key referencing fuel table) |
| when | Date and time of the refuel | DATETIME |
| amount | Amount of fuel refueled | DECIMAL |
| remark | Additional remarks or comments | TEXT |

### log_us_ver
| column name | description | data type |
|------------|-------------|-----------|
| id | ID of the user verification | INT |
| uname | User name | TEXT |
| utype | User type | TEXT |
| status | status | int |
