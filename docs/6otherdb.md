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
| uinstid | instrument unique id, foreign key from table: UID | INT |
| date | date of task | DATE |
| status | if done/failed/ upcoming | VARCHAR |

## user_verification (3 tables - approved, cancelled, pending)
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id / primary key | INT |
| name | | VARCHAR |
| email | | VARCHAR |
| institute | institute name - fkey from table:inst | VARCHAR |
| instituteid | foreign key from table:inst | VARCHAR |
| date | when they applied for verification, date time | DATETIME |

## institutions
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id / primary key | INT |
| name | | VARCHAR |
| representative | | VARCHAR |
| email | | VARCHAR |

## LOG Tables

### Usage Log
| column name | description | data type |
|-------------|-------------|-----------|
| id | ID of the usage log | INT |
| what | Description of the usage | VARCHAR |
| when | Date and time of the usage | DATETIME |
| by whom | User who performed the usage | INT (foreign key referencing user table) |
| guide | Student associated with the usage | INT (foreign key referencing user table) |
| remark | Additional remarks or comments | TEXT |
| usageid | ID of the usage record | INT |

### Maintenance Log
| column name | description | data type |
|-------------|-------------|-----------|
| id | ID of the maintenance log | INT |
| what | Description of the maintenance | VARCHAR |
| when | Date and time of the maintenance | DATETIME |
| by whom | User who performed the maintenance | INT (foreign key referencing user table) |
| status | Status of the maintenance (done/failed/upcoming) | VARCHAR |
| remark | Additional remarks or comments | TEXT |

### Service Log
| column name | description | data type |
|-------------|-------------|-----------|
| id | ID of the service log | INT |
| what | Description of the service | VARCHAR |
| when | Date and time of the service | DATETIME |
| status | Status of the service | VARCHAR |
| remark | Additional remarks or comments | TEXT |

### Room Change Log
| column name | description | data type |
|-------------|-------------|-----------|
| id | ID of the room change log | INT |
| what | Description of the room change | VARCHAR |
| from | Previous room | VARCHAR |
| to | New room | VARCHAR |
| remark | Additional remarks or comments | TEXT |

### Faculty Change Log for department
| column name | description | data type |
|-------------|-------------|-----------|
| id | ID of the faculty change log | INT |
| did | dept id :fkey dept | VARCHAR |
| when | Date and time of the change | DATETIME |
| from | Previous value | VARCHAR |
| to | New value | VARCHAR |
| remark | Additional remarks or comments | TEXT |

### Faculty Change Log for IID
| column name | description | data type |
|-------------|-------------|-----------|
| id | ID of the faculty change log | INT |
| iid | Instrument id :fkey iid | VARCHAR |
| when | Date and time of the change | DATETIME |
| from | Previous value | VARCHAR |
| to | New value | VARCHAR |
| remark | Additional remarks or comments | TEXT |

### Price Change Log
| column name | description | data type |
|-------------|-------------|-----------|
| id | ID of the price change log | INT |
| iid | Instrument ID | INT (foreign key referencing instruments table) |
| utype | usertype (foreign key from iid_pricing) |
| when | Date and time of the change | DATETIME |
| from | Previous price | DECIMAL |
| remark | Additional remarks or comments | TEXT |

## transaction
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id/ primary key | INT |
| account | foreign key from user | INT |
| type | is that credit or debit | VARCHAR |
| amount | amount of transaction | DECIMAL |

### Refuel Log (For Fuel)
| column name | description | data type |
|-------------|-------------|-----------|
| id | ID of the refuel log | INT |
| fid | Fuel ID | INT (foreign key referencing fuel table) |
| when | Date and time of the refuel | DATETIME |
| amount | Amount of fuel refueled | DECIMAL |
| remark | Additional remarks or comments | TEXT |

### Refuel Log (For UIDS)
| column name | description | data type |
|-------------|-------------|-----------|
| id | ID of the refuel log | INT |
| uid | UID (Unique Instrument ID) | INT (foreign key referencing instruments table) |
| fid | Fuel ID | INT (foreign key referencing fuel table) |
| when | Date and time of the refuel | DATETIME |
| amount | Amount of fuel refueled | DECIMAL |
| remark | Additional remarks or comments | TEXT |

### Refuel Log (For IIDS)
| column name | description | data type |
|-------------|-------------|-----------|
| id | ID of the refuel log | INT |
| iid | Instrument ID | INT (foreign key referencing instruments table) |
| fid | Fuel ID | INT (foreign key referencing fuel table) |
| when | Date and time of the refuel | DATETIME |
| amount | Amount of fuel refueled | DECIMAL |
| remark | Additional remarks or comments | TEXT |
