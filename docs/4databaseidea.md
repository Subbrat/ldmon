# Database Ideas
1. [INSTRUMENT](#instrument)<br>
2. [MAINTAINANCE](#maintainance)<br>
3. [LOG](#log)
4. [DATABASES](#databases)


# INSTRUMENT
```
    - we may use different db for different sections, convenient, secure but complex and config
    - Instrument db
        - code - Inst name, SL no, dept, core data - added & edited by Super User only
        - additional - location, table, location change, specs - can also be added by Faculty
```
# Flow for Databases
1. [floors](#db_floor) get added
2. [rooms](#db_rooms) get added
3. rooms get assigned to departments
4. dept specific [superuser]() adds main data about the instrument
5. dept specific [faculty]()adds additional data about instrument
6. > Unique ID of the instrument
   - to facilitate usage as
     - only the specific used instrument will gets change in the database when used,
     - for reservation as the vacant instrument will be avalable for reservation when searched <br>
  `[UID] = Category of Instrument * Numbers of Instrument`
7. the UID assigned will automatically place the Instruments in assigned department specific rooms


## db_floor
1. has location guide as direction, angle etc

## db_room
1. get assigned with department and Faculty incharge

## db_UID
1. format = P C M B E as fist alphabet specifying department
2. format = P C M B E as second alphabet specifying inter-desciplenary-department
3. category of the instrument in 3 alphabets
4. random generated texts
5. feedbacks recieved/ reports sent will also be UID specific

```
+ when one instrument category
    > searched - AJAX JSON
        - display the name, department, pricing, service status [ if all the instruments are OUS or any is online ]
        - user can click and check the instrument details such as
            : faculty, location, specifications, task, pricing, etc
    > selected
        - display the available ones with concern to reservation and maintainance parameters
        - display other parameters [ specific to privilages ]
```

# MAINTAINANCE
- Modification will be displayed on > Superuser, Faculty and Maintainer company section
- After maintainance a report can be issued
- log for maintainance


# LOG
- Blockchain algorithm to protect data forgery [! idea](https://github.com/Subbrat/ldmon/blob/main/docs/0.md#blocklog)


`PRETTY MUCH EVERYTHING WILL BE LOGGED `


# DATABASES
## database : INSTRUMENTS
`all the databases concerning instruments`<br>

| database | tables | fields | data type | description | access |
| :-- | :--: |:--: |:--: |:--: | --: |
| | | batch availability | | | |
| | | category | | | |
| | | name | | | |
| | | company | | | |
| | | slno | | | |
| | | room | | | |
| | | table | | | |
| | | description | | | |
| | | total nos | | | |
| | | instructor | | | |
| | | week availability | | | |
| | | cycle time | | | |
| | | gap betn cycle | | | |
| | | cycles per day | | | |
| | | specification | | | |
| | | unit in one maintainance | | | |
| | | unit used per cycle | | | |
| | | cycle in one maintainance period | | | |
| | | working days it can run | | | |
| | | last maintainance date | | | |
| | | dynamic variables | | | |
| | | already used | | | |
| | | remaining cycles | | | |
| | | working days it can run now | | | |
| | | next maintainance date | | | |
| | | warning date | | | |
| | | sID | | | |
| | | out of service | | | |
| | | size | | | |
| | | weight | | | |
| | | power requirement | | | |
| | | socket requirement | | | |
| | | UPS requirement | | | |
| | | HVAC & AC requirement | | | |
| | | Gas requirement | | | |
| | | any specific foundation or base system req | | | |
| | | water and drainage required | | | |
| | | furniture or closet | | | |