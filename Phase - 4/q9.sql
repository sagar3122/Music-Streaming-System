
SELECT TASD.RNAME, SUM(OPCOST_PER_TRACK) AS RL_OP_COST
FROM (SELECT T_D, TNAME, NO_TIMES_TRACK_STREAMED, A_D, ANAME, RNAME, RATE_STREAM, (NO_TIMES_TRACK_STREAMED * RATE_STREAM) AS OPCOST_PER_TRACK, T_DATE
      FROM(SELECT T_D, TNAME, NO_TIMES_TRACK_STREAMED, A.A_ID as A_D, ANAME, RNAME, RATE_STREAM, (NO_TIMES_TRACK_STREAMED * RATE_STREAM) AS OPCOST_PER_TRACK
            FROM  (SELECT DISTINCT LST.T_ID AS T_D, TNAME, COUNT(L_ID) AS NO_TIMES_TRACK_STREAMED, A_ID
                          FROM F_18_13_LISTENER_STREAMS_TRACK LST, F_18_13_TRACK T
                          WHERE LST.T_ID = T.T_ID
                          GROUP BY LST.T_ID, TNAME, A_ID) TS, F_18_13_ALBUM A
                  WHERE TS.A_ID = A.A_ID) TAD, F_18_13_T_DATE TD
      WHERE TAD.T_D = TD.T_ID AND T_DATE <= '12-Nov-2018' AND T_DATE >= '05-July-2018') TASD, F_18_13_RECORDING_LABELS R
WHERE TASD.RNAME = R.RNAME
GROUP BY TASD.RNAME
ORDER BY RL_OP_COST;
