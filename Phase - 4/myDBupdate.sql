--Query-1 Updates the city and state
update F_18_13_LOCATION
set L_CITY='Bangalore', L_STATE='Karnataka'
where LO_ID='18';

update F_18_13_LOCATION
set  L_CITY='Mysore', L_STATE='Karnataka'
where LO_ID='16';

update F_18_13_LOCATION
set  L_CITY='Tumkur', L_STATE='Karnataka'
where LO_ID='17';

update F_18_13_LOCATION
set L_CITY='Hampi', L_STATE='Karnataka'
where LO_ID='15';

update F_18_13_LOCATION
set L_CITY='Dharwad', L_STATE='Karnataka'
where LO_ID='12';

update F_18_13_LOCATION
set L_CITY='Coorg', L_STATE='Karnataka'
where LO_ID='11';

--Query-2 Updates the listener's first name and last name
update F_18_13_LISTENER
set FNAME='Nandish', LNAME='Sasalu'
where L_ID='1';

update F_18_13_LISTENER
set FNAME='Vignesh', LNAME='Kanth'
where L_ID='3';

update F_18_13_LISTENER
set FNAME='Somshekar', LNAME='Reddy'
where L_ID='2';

update F_18_13_LISTENER
set FNAME='Mufti', LNAME='Khan'
where L_ID='5';

update F_18_13_LISTENER
set FNAME='Shiva', LNAME='Patil'
where L_ID='10';

--Query-3 Updates the Artist's first name and last name

update F_18_13_ARTIST
set AR_FNAME='Sonu', AR_LNAME='Nigam'
where AR_FNAME='Drake';

update F_18_13_ARTIST
set AR_FNAME='Arjith', AR_LNAME='Singh'
where AR_FNAME='Kendrik';

update F_18_13_ARTIST
set AR_FNAME='Manna', AR_LNAME='Duy'
where AR_FNAME='Chris';


update F_18_13_ARTIST
set AR_FNAME='Alan', AR_LNAME='Walker'
where AR_FNAME='Shania';


update F_18_13_ARTIST
set AR_FNAME='Vijay', AR_LNAME='Prakash'
where AR_FNAME='Lorde';


update F_18_13_ARTIST
set AR_FNAME='Chandan', AR_LNAME='Shetty'
where AR_FNAME='Jon';

--Query-7 Updates the rate per watch of an advertsiment
update F_18_13_ADVERTISEMENT
set RATE_WATCH='10'
where AD_ID='2';

update F_18_13_ADVERTISEMENT
set RATE_WATCH='20'
where AD_ID='3';

update F_18_13_ADVERTISEMENT
set RATE_WATCH='100'
where AD_ID='4';

update F_18_13_ADVERTISEMENT
set RATE_WATCH='30'
where AD_ID='10';

update F_18_13_ADVERTISEMENT
set RATE_WATCH='40'
where AD_ID='7';

update F_18_13_ADVERTISEMENT
set RATE_WATCH='0.000001'
where AD_ID='8';
