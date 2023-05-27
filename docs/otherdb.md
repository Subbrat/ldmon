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

## reservation
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
