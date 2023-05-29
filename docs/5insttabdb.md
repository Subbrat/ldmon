## Basic
| Column    | Description                        | Data Type | Key                                  | Data Length |
|-----------|------------------------------------|-----------|--------------------------------------|-------------|
| id        | Unique ID / Primary Key             | INT       | Primary Key                          |             |
| department| Department                         | VARCHAR   | Foreign Key from department table    |             |
| category  | Category                           | VARCHAR   | Foreign Key from category table      |             |
| name      | Instrument Group Name or Instrument Name | VARCHAR |                                      |             |
| company   | Instrument Group Company Name      | VARCHAR   |                                      |             |
| slno      | Instrument Group SL Name           | VARCHAR   |                                      |             |
| description| Description                       | TEXT      |                                      |             |
| total nos | Total Number of Instruments        | INT       |                                      |             |
| instructor| Current Faculty Incharge           | VARCHAR   |                                      |             |
| image     | Image                              | VARCHAR   |                                      |             |

## Specification Data
| Column              | Description                          | Data Type | Key                                  | Data Length |
|---------------------|--------------------------------------|-----------|--------------------------------------|-------------|
| id                  | Unique ID / Primary Key               | INT       | Primary Key                          |             |
| week availability   | Week Availability                     | INT       |                                      |             |
| cycle time          | Cycle Time (Minutes)                  | INT       |                                      |             |
| gap between cycle   | Gap Between Cycles (Minutes)          | INT       |                                      |             |
| cycles per day      | Cycles Per Day                        | INT       |                                      |             |
| things used as input/refuel | Things Used as Input/Refuel     | VARCHAR   |                                      |             |
| unit refuel one maintenance | Unit Refuel Amount per Maintenance | DECIMAL   |                                      |             |
| unit used per cycle | Unit Used per Cycle                   | VARCHAR   |                                      |             |
| cycle in one maintenance period | Cycles in One Maintenance Period | DECIMAL   |                                      |             |

## Vicinity Requirements [2NF format]
| Column                 | Description                          | Data Type | Key                                  | Data Length |
|------------------------|--------------------------------------|-----------|--------------------------------------|-------------|
| id                     | Unique ID / Primary Key               | INT       | Primary Key                          |             |
| size                   | Size                                 | VARCHAR   |                                      |             |
| weight                 | Weight                               | VARCHAR   |                                      |             |
| power requirement      | Power Requirement                    | VARCHAR   |                                      |             |
| peripheral requirement      | peripheral Requirement           | INT   |        foreign key from db: peripheral  |             |
| Gas requirement        | Gas Requirement                      | VARCHAR   |                                      |             |
| any specific foundation or base system req | Specific Foundation or Base System Requirement | VARCHAR |             |             |
| water and drainage required | Water and Drainage Required        | VARCHAR   |                                      |             |
| furniture or closet    | Furniture or Closet                   | VARCHAR   |                                      |             |

## Guide/Manuals
| Column                 | Description                          | Data Type | Key                                  | Data Length |
|------------------------|--------------------------------------|-----------|--------------------------------------|-------------|
| id                     | Unique ID / Primary Key               | INT       | Primary Key                          |             |
| link to manual         | Hyperlink to User Manual              | VARCHAR   |                                      |             |
| template for certification | File and Link for Code             | VARCHAR   |                                      |             |
| related risk warning   | Related Risk Warning                  | VARCHAR   |                                      |             |
| Standard Operating Procedures (SOPs) for Equipment | SOPs for Equipment  | VARCHAR |                              |             |
| Equipment Troubleshooting Guides | Troubleshooting Guide               | VARCHAR   |                                      |             |

## One Time for Individual Instrument
| Column                 | Description                          | Data Type | Key                                  | Data Length |
|------------------------|--------------------------------------|-----------|--------------------------------------|-------------|
| id                     | Unique ID / Primary Key               | INT       | Primary Key                          |             |
| floor                  | Floor Number                         | INT       |                                      |             |
| room                   | Room                                 | VARCHAR   | Foreign Key from room table          |             |
| warranty date          | Warranty Expiration Date              | DATE      |                                      |             |
| warranty status        | Warranty Status                       | VARCHAR   |                                      |             |
| past reports of malfunction | Past Reports of Malfunction         | VARCHAR   |                                      |             |
| any other emergency guide | Other Emergency Guide                | VARCHAR   |                                      |             |

## Dynamic to One Individual Instrument
| Column                 | Description                          | Data Type | Key                                  | Data Length |
|------------------------|--------------------------------------|-----------|--------------------------------------|-------------|
| id                     | Unique ID / Primary Key               | INT       | Primary Key                          |             |
| last maintenance date  | Last Maintenance Date                 | DATE      |                                      |             |
| already used           | Cycles Used                           | INT       |                                      |             |
| remaining cycles       | Remaining Cycles                      | INT       |                                      |             |
| working days it can run now | Working Days                        | INT       |                                      |             |
| next maintenance date  | Next Maintenance Date                 | DATE      |                                      |             |
| out of service         | Out of Service                        | BOOLEAN   |                                      |             |
