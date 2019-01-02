SELECT FNAME, LNAME, TNAME as rec_track, ANAME as rec_album, times_played
FROM (SELECT L_ID, G.INTERESTED_GENRE AS I_GENRE, TNAME, ANAME, times_played
       FROM (SELECT TP.T_ID AS T_D, times_played, TNAME, T.A_ID AS A_D, ANAME, genre
            FROM   (SELECT T_ID, count(L_ID) AS times_played
                    FROM F_18_13_LISTENER_STREAMS_TRACK LST
                    GROUP BY T_ID) TP, F_18_13_TRACK T, F_18_13_ALBUM A
            WHERE TP.T_ID = T.T_ID AND T.A_ID = A.A_ID) TPAD, F_18_13_I_GENRE G
      WHERE TPAD.GENRE = G.INTERESTED_GENRE) LRT, F_18_13_LISTENER L
WHERE LRT.L_ID = L.L_ID AND ROWNUM <=50
group by FNAME,LNAME, TNAME, ANAME, times_played
ORDER BY times_played DESC;
