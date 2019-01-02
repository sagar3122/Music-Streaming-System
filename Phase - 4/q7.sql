SELECT SUM(trevenue) AS TOTAL_REVENUE_ALL_LIST
FROM(      SELECT DISTINCT L.L_ID, FNAME, LNAME, SUM(REVENUE_LISTENER_WATCH_AD) as trevenue
      FROM  (SELECT  LD.L_ID, AD, COUNT(AD) AS NO_TIMES_AD_WATCHED, RATE_WATCH, (COUNT(AD) * RATE_WATCH) AS REVENUE_LISTENER_WATCH_AD
      FROM  (SELECT L_ID, LWA.AD_ID AS AD, COUNT(LWA.AD_ID) AS NO_TIMES_AD_WATCHED, RATE_WATCH, (COUNT(LWA.AD_ID) * RATE_WATCH) AS REVENUE_LISTENER_WATCH_AD
             FROM F_18_13_LISTENER_WATCHES_AD LWA, F_18_13_ADVERTISEMENT A
             WHERE LWA.AD_ID = A.AD_ID
             GROUP BY L_ID, LWA.AD_ID, RATE_WATCH) LD, F_18_13_AD_DATE V
      WHERE LD.AD = V.AD_ID AND AD_DATE <= '11-Oct-2018' AND AD_DATE >= '05-July-2018'
      GROUP BY LD.L_ID, AD, RATE_WATCH) LAD, F_18_13_LISTENER L
WHERE L.L_ID = LAD.L_ID
group by L.L_ID, FNAME, LNAME);