<!-- the way how different users are supposed to login to site and follow their task  -->

# Flow control

`[ experimental - every algorithm in just in experiment phase ]`

# Super User / CAIF A tier
## 1.  Data Importlogin & <br>
  - data import of [primary table](https://github.com/Subbrat/ldmon/blob/main/docs/table.md#primary_fields)
  - reset password and hash from user side
  - login to dashboard

## 2. Dashboard
```
  - lab usage
  - maintainance
  - addition of rooms
  - addition / removal of instrument code data
  ```

### 3. Supervision
```
  - can see all the log changes ongoing in every databases
  - has all access to system files
  - can do all activity which a user/ faculty can do
  - review reports sent by faculty/ user
```


# Faculty / Lab side system
## 1.  Data Importlogin & <br>
  - data import of [primary table](https://github.com/Subbrat/ldmon/blob/main/docs/table.md#primary_fields)
  - reset password and hash from user side
  - login to dashboard

## Lab Side
```
  - can call for maintainance, check dates etc
  - review maintainance
  - can decline/ accept reservations
  - reply to query sent by user
  - send reports to user
  - check logs
  - check balance of users
  - report user activity to higher authority
```

# User

## 1.  User login <br>
signup > set password > provide funding certification > funding certification verifies and user set with type [user types](https://github.com/Subbrat/ldmon/blob/main/docs/shortnotes.md#user-types) > edit profile

## 2.  Finance <br>
    pay the pre charge price to finance handler > finance send data to admin admin credit pseudo amount to their account

## 3.  Dashboard Navigation
    - select an instrument
      - shows instrument data such as location, specifications, etc
    - provide date of reservation
    - shows the instrument with no reservation automatically
      + fetch from db > provided data + instrument reservation record
    - finalise reservation
    - makes payment

## 4.  Lab
    - goes lab
    - confirm to lab admin
    - uses instrument
    - gets report either by themselves or sent by faculty
    - send feedback if required
    - can download the report later too
