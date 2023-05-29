# **one time for group**

## basic
| | |
|--|--|
| department| either P C M B E |
| category| TBD by faculty |
| name| instrument group name or Instrument name |
| company | instrument group company name |
| slno| ? instrument group SL name |
| description | to group of instrument |
| total nos | to group of instrument |
| instructor| to group of instrument - current faculty incharge |
| image | of the instrument |

## specification data
| | |
|--|--|
| week availability | maybe 7/5 or less |
| cycle time| in minutes for group of inst |
| gap between cycle | in minutes for group of inst |
| cycles per day| in minutes for group of inst |
| things used as input/refuel | gas metal solid paper etc. |
| unit refuel one maintenance | the refuel amount [the variables will be as per the numbers of things used] |
| unit used per cycle | in format of the unit of material |
| cycle in one maintenance period | for group = unit in one maintenance/used in one cycle |

## vicinity requirements
| | |
|--|--|
| size| for group of instrument |
| weight| for group |
| power requirement | group |
| socket requirement| group |
| UPS requirement | group |
| HVAC & AC requirement | group |
| Gas requirement | group |
| any specific foundation or base system req | group |
| water and drainage required | group |
| furniture or closet | group |

## guide/manuals
| | |
|--|--|
| link to manual| hyperlink to user manual |
| template for certification | file and link for code |
| related risk warning | any risk of concern |
| Standard Operating Procedures (SOPs) for Equipment | any specific procedure |
| Equipment Troubleshooting Guides | troubleshooting guide group |

# **One time for individual instrument**
| | |
|--|--|
| floor||
| room | to dept && UID |
| warranty date| date of expiration of warranty |
| warranty status| if it is in or not in |
| past reports of malfunction| any:: user log to review |
| any other emergency guide| any any any for specific instrument |


# **Dynamic to one individual instrument**

| | |
|--|--|
| last maintenance date | date for UID |
| already used| cycles used per UID |
| remaining cycles| maintenance cycles used cycles: UID |
| working days it can run now | (cycles one maintenance/cycle per day) / week day number |
| next maintenance date | today + remaining days: UID |
| out of service| true or false for UID |


# **Log databases**
|table name |description | |
|--|--|--|
| usage log |user logs pk- UID & user ID|
| maintenance log |maintainance record pk - UID|
| service log |if instrument went offline for some days pk- UID|
| room change log |instrument room change |
| faculty change log|faculty in charge log