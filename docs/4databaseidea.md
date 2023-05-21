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
| | | batch | | | |
| | | availability | | | |
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


### rough
___
| field | description |
| :-- | :--: |
| department |P C M B E|
| batch |dismissed|
| category |`TBD by faculty`|
| name |instrument group name|
| company |instrument group company name|
| slno |`?`instrument group SL name|
| floor |common one|
| room |to dept && UID|
| table |to UID|
| description |to group of instrument|
| total nos |to group of instrument|
| head of dept |to dept|
| instructor |to group of instrument|
| week availability |maybe 7/5 or less|
| cycle time |in minutes for group of inst|
| gap betn cycle |in minutes for group of inst|
| cycles per day |in minutes for group of inst|

### specification

| field | description |
| :-- | :--: |
| things used as input |gas metal soild paper etc etc|
| unit in one maintainance |the refuel|
| unit used per cycle |in format of the the unit of material|
| cycle in one maintainance period |for group = unit in in one maintainance/ used in one cycle|
| working days it can run |(cycles one maintainance/ cycle per day) |
| last maintainance date |date for UID|
### dynamic variables
| field | description |
| :-- | :--: |
| already used |cycles used per UID|
| remaining cycles |maintainance cycles used cycles : UID |
| working days it can run now |cycles one maintainance/ cycle per day) / week day number|
| next maintainance date | today + remaining days : UID |
| warning date |next maintainance date - 5 or 10 days whichever is precise|
| uID |auto generated assigned number :: group ** numbers of instruments [UID](#db_uid)|
| out of service |true or false for UID |
| size |for group of instrument|
| weight |for group|
| power requirement |group|
| socket requirement |group|
| UPS requirement |group|
| HVAC & AC requirement |group|
| Gas requirement |group|
| any specific foundation or base system req |group|
| water and drainage required |group|
| furniture or closet |group|
| user log|log|
|image | of the iabnstrument|
|link to manual | hyper link to user manual|
|transfer history | if room | room; table | table|
|warrenty date | date of expiration of warrenty|
|warrenty status | if is in or not in|
|template for the certification | file and link for code |
|related risk warning | any risk of concern|
|past reports of malfunction | any :: user log to review|
|Standard Operating Procedures (SOPs) for Equipment | any specific proced|
|Equipment Troubleshooting Guides | troubleshooting guide group|
|any other emergebcy guide | any any any for group|


<br><br>

1. department  - P C M B E<br>
1. batch  - dismissed<br>
1. category  - `TBD by faculty`<br>
1. name  - instrument group name<br>
1. company  - instrument group company name<br>
1. slno  - `?`instrument group SL name<br>
1. floor  - common one<br>
1. room  - to dept && UID<br>
1. table  - to UID<br>
1. description  - to group of instrument<br>
1. total nos  - to group of instrument<br>
1. head of dept  - to dept<br>
1. instructor  - to group of instrument<br>
1. week availability  - maybe 7/5 or less<br>
1. cycle time  - in minutes for group of inst<br>
1. gap betn cycle  - in minutes for group of inst<br>
1. cycles per day  - in minutes for group of inst<br>
1. things used as input  - gas metal soild paper etc etc<br>
1. unit in one maintainance  - the refuel<br>
1. unit used per cycle  - in format of the the unit of material<br>
cycle in one maintainance period  - for group = unit in in one maintainance/ used 1. <br>in one cycle
1. working days it can run  - (cycles one maintainance/ cycle per day)<br>
1. last maintainance date  - date for UID<br>
1. already used  - cycles used per UID<br>
1. remaining cycles  - maintainance cycles used cycles : UID<br>
working days it can run now  - cycles one maintainance/ cycle per day) / week day 1. <br>number
1. next maintainance date today + remaining days : UID<br>
1. warning date  - next maintainance date 5 or 10 days whichever is precise<br>
1. uID  - auto generated assigned number :: group ** numbers of instruments [UID]<br>(#db_uid)
1. out of service  - true or false for UID<br>
1. size  - for group of instrument<br>
1. weight  - for group<br>
1. power requirement  - group<br>
1. socket requirement  - group<br>
1. UPS requirement  - group<br>
1. HVAC & AC requirement  - group<br>
1. Gas requirement  - group<br>
1. any specific foundation or base system req  - group<br>
1. water and drainage required  - group<br>
1. furniture or closet  - group<br>
1. user log - UID users for the inst:: also for the group :: dept :: all<br>
1. image - of the iabnstrument<br>
1. link to manual - hyper link to user manual<br>
1. transfer history - if room - room; table - table<br>
1. warrenty date - date of expiration of warrenty<br>
1. warrenty status - if is in or not in<br>
1. template for the certification - file and link for code -<br>
1. related risk warning - any risk of concern<br>
1. past reports of malfunction - any :: user log to review<br>
1. Standard Operating Procedures (SOPs) for Equipment - any specific proced<br>
1. Equipment Troubleshooting Guides - troubleshooting guide group<br>
1. any other emergebcy guide - any any any for group<br>

department
room numbers
head of dept: to dept

### One time for group:
```sh
## others
department: P C M B E
batch: dismissed
category: TBD by faculty
name: instrument group name or Instrument name
company: instrument group company name
slno: ? instrument group SL name
description: to group of instrument
total nos: to group of instrument
instructor: to group of instrument
image: of the instrument
week availability: maybe 7/5 or less

## specification data

## guide/ manuals
link to manual: hyperlink to user manual
template for certification: file and link for code
related risk warning: any risk of concern
Standard Operating Procedures (SOPs) for Equipment: any specific procedure
Equipment Troubleshooting Guides: troubleshooting guide group

## vicinity requirements
```

### One time for individual instrument:
```sh
floor: common one
room: to dept && UID
warranty date: date of expiration of warranty
warranty status: if it is in or not in
past reports of malfunction: any:: user log to review
any other emergency guide: any any any for specific instrument
```

### Dynamic to instrument group:
cycle time: in minutes for group of inst
gap between cycle: in minutes for group of inst
cycles per day: in minutes for group of inst
things used as input: gas metal solid paper etc etc
unit in one maintenance: the refuel
size: for group of instrument
weight: for group
power requirement: group
socket requirement: group
UPS requirement: group
HVAC & AC requirement: group
Gas requirement: group
any specific foundation or base system req: group
water and drainage required: group
furniture or closet: group

### Dynamic to one individual instrument:
unit used per cycle: in format of the unit of material
cycle in one maintenance period: for group = unit in in one maintenance/ used in one cycle
last maintenance date: date for UID
already used: cycles used per UID
remaining cycles: maintenance cycles used cycles: UID
working days it can run now: (cycles one maintenance/ cycle per day) / week day number
next maintenance date: today + remaining days: UID
out of service: true or false for UID
user log: UID users for the inst:: also for the group:: dept:: all
transfer history: if room - room; table - table