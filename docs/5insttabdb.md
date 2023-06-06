## iid_basic
| column | description | data type |
|--------|-------------|-----------|
| id | unique id / primary key | int |
| iid | instrument id | varchar |
| department_id | foreign key from department table (reference: id) | int |
| category_id | foreign key from category table (reference: id) | int |
| name | instrument group name or instrument name | varchar |
| company | instrument group company name, foreign key table- company ref- id | int |
| slno | instrument group serial number | varchar |
| description | description | varchar |
| total_nos | total number of instruments | int |
| instructor | foreign key table- faculty, reference - id | int |
| image | image | varchar |

## iid_pricing
| column | description | data type |
|--|--|--|
| id | unique id / primary key | int |
| instrument | foreign key table- iid_basic, reference - id | int |
| price_u1 | price for unit 1 | decimal |
| price_u2 | price for unit 2 | decimal |
| price_u3 | price for unit 3 | decimal |
| price_u4 | price for unit 4 | decimal |
| price_u5 | price for unit 5 | decimal |

## iid_spec
| column | description | data type |
|--------|-------------|-----------|
| id | unique id / primary key | int |
| instrument | foreign key table- iid_basic, reference - id | int |
| week_availability | week availability | int |
| cycle_time | cycle time (minutes) | int |
| gap_between_cycle | gap between cycles (minutes) | int |
| cycles_per_day | cycles per day | int |
| things_used_as_input_refuel | things used as input/refuel | varchar |
| unit_refuel_one_maintenance | unit refuel amount per maintenance | decimal |
| unit_used_per_cycle | unit used per cycle | varchar |
| cycles_in_one_maintenance_period | cycles in one maintenance period | decimal |

## iid_vic
| column | description | data type |
|--------|-------------|-----------|
| id | unique id / primary key | int |
| instrument | foreign key table- iid_basic, reference - id | int |
| size | size | varchar |
| weight | weight | varchar |
| power_requirement | power requirement | varchar |
| peripheral_requirement | peripheral requirement (foreign key from peripherals table - reference: peripherals.id) | int |
| gas_requirement | gas requirement | varchar |
| any_base_req | specific foundation or base system requirement | varchar |
| water_and_drainage_required | water and drainage required | varchar |
| furniture_or_closet | furniture or closet | varchar |

## iid_manual
| column | description | data type |
|--------|-------------|-----------|
| id | unique id / primary key | int |
| instrument | foreign key table- iid_basic, reference - id | int |
| link_to_manual | hyperlink to user manual | varchar |
| template_for_certification | file and link for code | varchar |
| related_risk_warning | related risk warning | varchar |
| sops_for_equipment | standard operating procedures (sops) for equipment | varchar |
| equipment_troubleshooting_guides | troubleshooting guide for equipment | varchar |

## uid
| column | description | data type |
|--------|-------------|-----------|
| id | unique id / foreign key | int |
| instrument | foreign key table- iid_basic, reference - id | int |
| unique_identifier | unique identifier | varchar |

## uid_ot
| column | description | data type |
|--------|-------------|-----------|
| id | unique id / primary key | int |
| instrument_u | foreign key table- uid, reference - id | int |
| floor | floor number | int |
| room | room | varchar |
| warranty_date | warranty expiration date | date |
| warranty_status | warranty status | varchar |
| past_reports_of_malfunction | past reports of malfunction | varchar |
| any_other_emergency_guide | other emergency guide | varchar |

## uid_dyna
| column | description | data type |
|--------|-------------|-----------|
| id | unique id / primary key | int |
| instrument_u | foreign key table- uid, reference - id | int |
| last_maintenance_date | last maintenance date | date |
| already_used_cycles | cycles used | int |
| remaining_cycles | remaining cycles | int |
| working_days_now | working days it can run now | int |
| next_maintenance_date | next maintenance date | date |
| out_of_service | out of service | boolean |
