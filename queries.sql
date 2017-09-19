SELECT 
*,
earth_distance(ll_to_earth(50.4501, 30.5234),ll_to_earth("order".lattitude, "order".longtitude)) / 1000 as Distance
FROM "order"
WHERE earth_box(
          ll_to_earth(50.4501, 30.5234), 200 * 1000) @> ll_to_earth("order".lattitude, "order".longtitude
      )
ORDER BY Distance ASC
      ;

SELECT 
*
FROM "order"
WHERE 
      (lattitude >= 50.0 AND lattitude <= 52.0) AND (longtitude >= 29.0 AND longtitude <= 31.0)
      AND
      earth_box(
          ll_to_earth(50.4501, 30.5234), 200 * 1000) @> ll_to_earth("order".lattitude, "order".longtitude
      )
      ;

SELECT * FROM "order" WHERE
    (lattitude >= 50.0 AND lattitude <= 52.0) AND (longtitude >= 29.0 AND longtitude <= 31.0)
AND
    acos(sin(1.3963) * sin(lattitude) + cos(1.3963) * cos(lattitude) * cos(longtitude - (-0.6981))) <= 0.1570;

SELECT count(*) as Count FROM "order";

SELECT 
count(*) as Count
FROM "order"
WHERE earth_box(
          ll_to_earth(50.4501, 30.5234), 100 * 1000) @> ll_to_earth(float8("order".lattitude), float8("order".longtitude)
      )
      ;