## user
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id/ primary key | int |
| name | name of user | varchar |
| dept | foreign key table : department, refernce-id | int |
| email | email | varchar |

## category
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id/ primary key | int |
| name | name | varchar |
| dept | dept : foreign key from table : department-id | int |

## department
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id/ primary key | int |
| name | name | varchar |
| hod | name of hod : foreign key from table : faculty, ref-id | int |

## rooms
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id/ primary key | int |
| room | room_name or number | varchar |
| floor | floor number : foreign key from table : floor, ref-id | int |
| dept | assigned dept : foreign key from table : department, ref-id | int |
<!-- we may add which room has how many tables of which size and room dimensions? -->

## floor
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id/ primary key | int |
| floor | floor name/ number | varchar |

## faculty
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id/ primary key | int |
| name | name | varchar |
| dept | foreign key from table : department, ref- id | int |
| email | email | varchar |

## funds
| column name | description | datatype |
|--|--|--|
| id | id / primary key | int |
|account | foreign key from table : user,ref - id  | int |
|balance|present amount balanace|decimal|

## reservation
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id / primary key | int |
| user | foreign key from table: user, ref-id | int |
| for | foreign key from table: instruments, ref-id | int |
| status | approved/ cancelled/ pending | int |
| dept | foreign key from table: department, ref-id | int |
| faculty | foreign key from table: faculty, ref-id | int |
| comment | any comment for the same | varchar |
| related | any link for the same | varchar |


## peripherals
| column | description | data type |
|--------|-------------|-----------|
| id | unique id / primary key | int |
| name | peripheral name | varchar |
| description | description | varchar |
| quantity | quantity | int |
| use | how many in use | int |
| type | type | varchar |

## add_types
| id | unique id / primary key | int |
| type | peripheral type | varchar |

## company
| id | unique id / primary key | int |
| name | company name | varchar |

## refuels
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id / primary key | int |
| name | name of the fuel | varchar |
| incharge | name of incharge if any | varchar |
| type | type of fuel | varchar |

## maintenance
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id / primary key | int |
| uinstid | instrument unique id, foreign key from table, ref-uid | int |
| date | date of task | date |
| status | if done/failed/ upcoming | varchar |

## user_verification
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id / primary key | int |
| name | | varchar |
| email | | varchar |
| status | status of verification | int |
| institute | institute name - fkey from table:inst | varchar |
| instituteid | foreign key from table-inst, ref -id | varchar |
| date | when they applied for verification, date time | datetime |

## institutions
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id / primary key | int |
| name | | varchar |
| representative | | varchar |
| email | | varchar |

## log tables

### log_usage
| column name | description | data type |
|-------------|-------------|-----------|
| id | id of the usage log | int |
| instrument | uid of the inst, foreign key - uid, ref-id | int |
| when | date and time of the usage | datetime |
| by whom | user who performed the usage, foreign key users, ref-id | int |
| guide | student associated with the usage,  foreign key faculty, ref-id | int |
| remark | additional remarks or comments | text |
| usageid | id of the usage record | int |

### log_maintenance
| column name | description | data type |
|-------------|-------------|-----------|
| id | id of the maintenance log | int |
| instrument | uid of the inst, foreign key - uid, ref-id | int |
| when | date and time of the maintenance | datetime |
| by whom | user who performed the maintenance | varchar |
| status | status of the maintenance (done/failed) | varchar |
| remark | additional remarks or comments | text |

### log_service
| column name | description | data type |
|-------------|-------------|-----------|
| id | id of the service log | int |
| instrument | uid of the inst, foreign key - uid, ref-id | int |
| when | date and time of the service | datetime |
| status | status of the service | varchar |
| remark | additional remarks or comments | text |

### log_room_cng
| column name | description | data type |
|-------------|-------------|-----------|
| id | id of the room change log | int |
| instrument | uid of the inst, foreign key - uid, ref-id | int |
| from | foreign key table- room, reference - id | int |
| to | foreign key table- room, reference - id | int |
| remark | additional remarks or comments | text |

### log_fac_cng_dept
| column name | description | data type |
|-------------|-------------|-----------|
| id | id of the faculty change log | int |
| depid | dept id :foreign key dept,ref-id | int |
| when | date and time of the change | datetime |
| from | dept id :foreign key faculty,ref-id | int |
| to | dept id :foreign key faculty,ref-id | int |
| remark | additional remarks or comments | text |

### log_fac_cng_iid
| column name | description | data type |
|-------------|-------------|-----------|
| id | id of the faculty change log | int |
| iid | instrument id :foreign key iid_basic, ref-id | varchar |
| when | date and time of the change | datetime |
| from | previous value | varchar |
| to | new value | varchar |
| remark | additional remarks or comments | text |

### log_prc_cng
| column name | description | data type |
|-------------|-------------|-----------|
| id | id of the price change log | int |
| iid | instrument id (foreign key table - iid_basic, ref -id)| int  |
| utype | usertype (foreign key from iid_pricing, ref- id) |
| when | date and time of the change | datetime |
| from | previous price | decimal |
| remark | additional remarks or comments | text |

### log_transaction
| column name | description | datatype |
|-------------|-------------|----------|
| id | unique id/ primary key | int |
| account | foreign key from user, ref -id  | int |
| type | is that credit or debit | int |
| amount | amount of transaction | decimal |

### log_refuel_fuel
| column name | description | data type |
|-------------|-------------|-----------|
| id | id of the refuel log | int |
| fid | fuel id (foreign key referencing fuel table, ref - id) | int |
| when | date and time of the refuel | datetime |
| amount | amount of fuel refueled | decimal |
| remark | additional remarks or comments | text |

### log_refuel_uid
| column name | description | data type |
|-------------|-------------|-----------|
| id | id of the refuel log | int |
| uid | uid (unique instrument id) (foreign key table- ) | int |
| fid | fuel id | int (foreign key referencing fuel table) |
| when | date and time of the refuel | datetime |
| amount | amount of fuel refueled | decimal |
| remark | additional remarks or comments | text |

### log_refuel_iid
| column name | description | data type |
|-------------|-------------|-----------|
| id | id of the refuel log | int |
| iid | instrument id | int (foreign key referencing instruments table) |
| fid | fuel id | int (foreign key referencing fuel table) |
| when | date and time of the refuel | datetime |
| amount | amount of fuel refueled | decimal |
| remark | additional remarks or comments | text |

### log_us_ver
| column name | description | data type |
|------------|-------------|-----------|
| id | id of the user verification | int |
| uname | user name | text |
| utype | user type | text |
| status | status | int |
