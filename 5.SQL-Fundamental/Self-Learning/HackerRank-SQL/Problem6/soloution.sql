SELECT ROUND(SQRT(POWER((MIN(lat_n) - MAX(lat_n)), 2) + POWER((MIN(long_w) - MAX(long_w)), 2)), 4) 
FROM hackerrank.STATION