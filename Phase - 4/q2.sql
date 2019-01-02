SELECT DISTINCT L.L_ID, FNAME, LNAME, SUM(REVENUE_LISTENER_WATCH_AD)
FROM (SELECT L_ID, LWA.AD_ID, COUNT(LWA.AD_ID) AS NO_TIMES_AD_WATCHED, RATE_WATCH, (COUNT(LWA.AD_ID) * RATE_WATCH) AS REVENUE_LISTENER_WATCH_AD
FROM F_18_13_LISTENER_WATCHES_AD LWA, F_18_13_ADVERTISEMENT A
WHERE LWA.AD_ID = A.AD_ID
GROUP BY L_ID, LWA.AD_ID, RATE_WATCH) LD, F_18_13_LISTENER L
WHERE L.L_ID = LD.L_ID
group by L.L_ID, FNAME, LNAME;
