SELECT t1.*, t2.[make]
FROM t1 LEFT OUTER JOIN t2
ON t1.[make-id] = t2.[make-id];
