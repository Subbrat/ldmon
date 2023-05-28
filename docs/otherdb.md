# other Tables

## user
| column name | description | datatype | data length |
|-------------|-------------|----------|-------------|
| id          | unique id/ primary key |          |             |
| name        | name of user |          |             |
| dept        | foreign key from db: department |          |             |
| email       | email |          |             |

## category
| column name | description | datatype | data length |
|-------------|-------------|----------|-------------|
| id          | unique id/ primary key |          |             |
| name        | name |          |             |
| dept        | dept |          |             |

## department
| column name | description | datatype | data length |
|-------------|-------------|----------|-------------|
| id          | unique id/ primary key |          |             |
| name        | name |          |             |
| hod         | name of hod |          |             |

## rooms
| column name | description | datatype | data length |
|-------------|-------------|----------|-------------|
| id          | unique id/ primary key |          |             |
| room        | room_name or number |          |             |
| floor       | floor number |          |             |
| dept        | assigned dept |          |             |

## floor
| column name | description | datatype | data length |
|-------------|-------------|----------|-------------|
| id          | unique id/ primary key |          |             |
| floor       | floor name/ number |          |             |

## faculty
| column name | description | datatype | data length |
|-------------|-------------|----------|-------------|
| id          | unique id/ primary key |          |             |
| name        | name |          |             |
| dept        | foreign key from db: department |          |             |
| email       | email |          |             |

## finance
| column name | description | datatype | data length |
|-------------|-------------|----------|-------------|
| id          | unique id/ primary key |          |             |
| account     | foreign key from user |          |             |
| type        | is that credit or debit |          |             |
| amount      | amount of transaction |          |             |

## reservation (3 tables - approved, cancelled, pending)
| column name | description | datatype | data length |
|-------------|-------------|----------|-------------|
| id          |             |          |             |
| user        | foreign key from db: user |          |             |
| for         | foreign key from db: instruments |          |             |
| dept        | foreign key from db: department |          |             |
| faculty     | foreign key from db: faculty |          |             |
| comment     | any comment for the same |          |             |

## pricing
| column name | description | datatype | data length |
|-------------|-------------|----------|-------------|
| id          |             |          |             |
| instid      | foreign key from db: instrumentsIID |          |             |
| price       | pricing for the instrument |          |             |

## refuels
| column name | description | datatype | data length |
|-------------|-------------|----------|-------------|
| id          |             |          |             |
| name        | name of the fuel |          |             |
| incharge    | name of incharge if any |          |             |

## maintenance
| column name | description | datatype | data length |
|-------------|-------------|----------|-------------|
| id          |             |          |             |
| uinstid     | instrument unique id, foreign key from db: UID |          |             |
| date        | date of task |          |             |
| status      | if done/failed/ upcoming |          |             |

## user_verification (3 tables - approved, cancelled, pending)
| column name | description | datatype | data length |
|-------------|-------------|----------|-------------|
| id          |             |          |             |
| name        |             |          |             |
| email       |             |          |             |
| institute   |             |          |             |
| instituteid |             |          |             |
| date        | when they applied for verification, date time |          |             |

## institutions
| column name | description | datatype | data length |
|-------------|-------------|----------|-------------|
| id          |             |          |             |
| name        |             |          |             |
| representative |          |          |             |

---

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
