SELECT MB.MB001,MB.MB011,MB.MB008,MP.minprice
FROM PURMB MB
INNER JOIN (select MB001,MIN(abs(DATEDIFF(DD, left(CREATE_DATE,8),MB008))) as minprice
FROM PURMB
GROUP BY MB001) AS MP
ON MP.MB001=MB.MB001 AND abs(datediff(dd,left(CREATE_DATE,8),MB008))=MP.minprice

