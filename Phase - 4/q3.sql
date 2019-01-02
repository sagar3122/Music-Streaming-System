SELECT *
FROM (SELECT ARP.AR_ID, AR_FNAME, AR_LNAME, times_played
FROM (SELECT AR_ID, times_played
      FROM (SELECT A_ID, times_played
              FROM   (SELECT T_ID, COUNT(L_ID) as times_played
                      FROM F_18_13_LISTENER_STREAMS_TRACK LST
                      group by T_ID) TP, F_18_13_TRACK T
                      WHERE TP.T_ID = T.T_ID ) AP, F_18_13_ALBUM_HAS_ARTIST AA
              WHERE AP.A_ID = AA.A_ID ) ARP, F_18_13_ARTIST AR
      WHERE ARP.AR_ID = AR.AR_ID)
WHERE ROWNUM <=10
ORDER BY times_played DESC;
