SELECT r1.[Movie Name], r2.[Movie Name], r3.[Movie Name]
FROM t1
JOIN t2 AS r1 ON t1.[Item 1] = r1.[Movie ID]
JOIN t2 AS r2 ON t1.[Item 2] = r2.[Movie ID]
JOIN t2 AS r3 ON t1.[Item 3] = r3.[Movie ID];