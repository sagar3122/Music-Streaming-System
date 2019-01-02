SELECT DISTINCT FNAME, LNAME
FROM F_18_13_LISTENER
WHERE L_ID NOT IN
              (SELECT DISTINCT LST.L_ID
              FROM F_18_13_LISTENER_STREAMS_TRACK LST, F_18_13_T_DATE TD
              WHERE LST.T_ID = TD.T_ID
              GROUP BY LST.L_ID, T_DATE
              HAVING T_DATE <= '12-Nov-2018' AND T_DATE >= '12-Oct-2018');