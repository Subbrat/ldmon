<!-- the way how different users are supposed to login to site and follow their task  -->

# Flow control

`[ experimental - every algorithm in just in experiment phase ]`

# User

## 1.  User login <br>
signup > set password > provide funding certification > funding certification verifies and user set with type [user types](https://github>com/Subbrat/ldmon/blob/main/docs/shortnotes>md#user-types) > edit profile

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