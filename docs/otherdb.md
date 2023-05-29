## user
| column name | description | datatype | data length |
|-------------|-------------|----------|-------------|
| id          | unique id/ primary key | INT |             |
| name        | name of user | VARCHAR |             |
| dept        | foreign key from db: department | INT |             |
| email       | email | VARCHAR |             |

## category
| column name | description | datatype | data length |
|-------------|-------------|----------|-------------|
| id          | unique id/ primary key | INT |             |
| name        | name | VARCHAR |             |
| dept        | dept | INT |             |

## department
| column name | description | datatype | data length |
|-------------|-------------|----------|-------------|
| id          | unique id/ primary key | INT |             |
| name        | name | VARCHAR |             |
| hod         | name of hod | VARCHAR |             |

## rooms
| column name | description | datatype | data length |
|-------------|-------------|----------|-------------|
| id          | unique id/ primary key | INT |             |
| room        | room_name or number | VARCHAR |             |
| floor       | floor number | INT |             |
| dept        | assigned dept | INT |             |

## floor
| column name | description | datatype | data length |
|-------------|-------------|----------|-------------|
| id          | unique id/ primary key | INT |             |
| floor       | floor name/ number | VARCHAR |             |

## faculty
| column name | description | datatype | data length |
|-------------|-------------|----------|-------------|
| id          | unique id/ primary key | INT |             |
| name        | name | VARCHAR |             |
| dept        | foreign key from db: department | INT |             |
| email       | email | VARCHAR |             |

## finance
| column name | description | datatype | data length |
|-------------|-------------|----------|-------------|
| id          | unique id/ primary key | INT |             |
| account     | foreign key from user | INT |             |
| type        | is that credit or debit | VARCHAR |             |
| amount      | amount of transaction | DECIMAL |             |

## reservation (3 tables - approved, cancelled, pending)
| column name | description | datatype | data length |
|-------------|-------------|----------|-------------|
| id          | unique id / primary key| INT |             |
| user        | foreign key from db: user | INT |             |
| for         | foreign key from db: instruments | INT |             |
| dept        | foreign key from db: department | INT |             |
| faculty     | foreign key from db: faculty | INT |             |
| comment     | any comment for the same | TEXT |             |

## pricing
| column name | description | datatype | data length |
|-------------|-------------|----------|-------------|
| id          | unique id / primary key| INT |             |
| instid      | foreign key from db: instrumentsIID | INT |             |
| price       | pricing for the instrument | DECIMAL |             |

## Peripherals
| Column       | Description                        | Data Type | Key                     | Data Length |
|--------------|------------------------------------|-----------|-------------------------|-------------|
| id           | Unique ID / Primary Key             | INT       | Primary Key             |             |
| name         | Peripheral Name                    | VARCHAR   |                         |             |
| description  | Description                        | TEXT      |                         |             |
| quantity     | Quantity                           | INT       |                         |             |

## refuels
| column name | description | datatype | data length |
|-------------|-------------|----------|-------------|
| id          | unique id / primary key| INT |             |
| name        | name of the fuel | VARCHAR |             |
| incharge    | name of incharge if any | VARCHAR |             |

## maintenance
| column name | description | datatype | data length |
|-------------|-------------|----------|-------------|
| id          | unique id / primary key| INT |             |
| uinstid     | instrument unique id, foreign key from db: UID | INT |             |
| date        | date of task | DATE |             |
| status      | if done/failed/ upcoming | VARCHAR |             |

## user_verification (3 tables - approved, cancelled, pending)
| column name | description | datatype | data length |
|-------------|-------------|----------|-------------|
| id          | unique id / primary key| INT |             |
| name        |             | VARCHAR |             |
| email       |             | VARCHAR |             |
| institute   | institute name - fkey from db:inst | VARCHAR |             |
| instituteid | foreing key from db:inst | VARCHAR |             |
| date        | when they applied for verification, date time | DATETIME |             |

## institutions
| column name | description | datatype | data length |
|-------------|-------------|----------|-------------|
| id          | unique id / primary key| INT |             |
| name        |             | VARCHAR |             |
| representative |          | VARCHAR |             |


# LOG Tables
## Usage Log
| column name | description | data type | data length |
|-------------|-------------|-----------|-------------|
| id          | ID of the usage log | INT |             |
| what        | Description of the usage | VARCHAR |          |
| when        | Date and time of the usage | DATETIME |          |
| by whom     | User who performed the usage | INT (foreign key referencing user table) |             |
| whose student | Student associated with the usage | INT (foreign key referencing user table) |             |
| remark      | Additional remarks or comments | TEXT |          |
| usageid     | ID of the usage record | INT |             |

## Maintainance Log
| column name | description | data type | data length |
|-------------|-------------|-----------|-------------|
| id          | ID of the maintenance log | INT |             |
| what        | Description of the maintenance | VARCHAR |          |
| when        | Date and time of the maintenance | DATETIME |          |
| by whom     | User who performed the maintenance | INT (foreign key referencing user table) |             |
| status      | Status of the maintenance (done/failed/upcoming) | VARCHAR |          |
| remark      | Additional remarks or comments | TEXT |          |

## Service Log
| column name | description | data type | data length |
|-------------|-------------|-----------|-------------|
| id          | ID of the service log | INT |             |
| what        | Description of the service | VARCHAR |          |
| when        | Date and time of the service | DATETIME |          |
| status      | Status of the service | VARCHAR |          |
| remark      | Additional remarks or comments | TEXT |          |

## Room Change Log
| column name | description | data type | data length |
|-------------|-------------|-----------|-------------|
| id          | ID of the room change log | INT |             |
| what        | Description of the room change | VARCHAR |          |
| from        | Previous room | VARCHAR |          |
| to          | New room | VARCHAR |          |
| remark      | Additional remarks or comments | TEXT |          |

## Faculty Change Log
| column name | description | data type | data length |
|-------------|-------------|-----------|-------------|
| id          | ID of the faculty change log | INT |             |
| whatIID / what dept | Description of the change (Instrument ID or Department) | VARCHAR |          |
| when        | Date and time of the change | DATETIME |          |
| from        | Previous value | VARCHAR |          |
| to          | New value | VARCHAR |          |
| remark      | Additional remarks or comments | TEXT |          |

## Price Change Log
| column name | description | data type | data length |
|-------------|-------------|-----------|-------------|
| id          | ID of the price change log | INT |             |
| iid         | Instrument ID | INT (foreign key referencing instruments table) |             |
| when        | Date and time of the change | DATETIME |          |
| from        | Previous price | DECIMAL |          |

## Refuel Log (For Fuel)
| column name | description | data type | data length |
|-------------|-------------|-----------|-------------|
| id          | ID of the refuel log | INT |             |
| fid         | Fuel ID | INT (foreign key referencing fuel table) |             |
| when        | Date and time of the refuel | DATETIME |          |
| amount      | Amount of fuel refueled | DECIMAL |          |
| remark      | Additional remarks or comments | TEXT |          |

## Refuel Log (For UIDS)
| column name | description | data type | data length |
|-------------|-------------|-----------|-------------|
| id          | ID of the refuel log | INT |             |
| uid         | UID (Unique Instrument ID) | INT (foreign key referencing instruments table) |             |
| fid         | Fuel ID | INT (foreign key referencing fuel table) |             |
| when        | Date and time of the refuel | DATETIME |          |
| amount      | Amount of fuel refueled | DECIMAL |          |
| remark      | Additional remarks or comments | TEXT |          |

## Refuel Log (For IIDS)
| column name | description | data type | data length |
|-------------|-------------|-----------|-------------|
| id          | ID of the refuel log | INT |             |
| iid         | Instrument ID | INT (foreign key referencing instruments table) |             |
| fid         | Fuel ID | INT (foreign key referencing fuel table) |             |
| when        | Date and time of the refuel | DATETIME |          |
| amount      | Amount of fuel refueled | DECIMAL |          |
| remark      | Additional remarks or comments | TEXT |          |
