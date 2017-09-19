SELECT 
*,
earth_distance(ll_to_earth(50.4501, 30.5234),ll_to_earth(float8("order".lattitude), float8("order".longtitude))) / 1000 as Distance
FROM "order"
WHERE earth_box(
          ll_to_earth(50.4501, 30.5234), 200 * 1000) @> ll_to_earth(float8("order".lattitude), float8("order".longtitude)
      )
ORDER BY Distance ASC
      ;

SELECT count(*) as Count FROM "order";

SELECT 
count(*) as Count
FROM "order"
WHERE earth_box(
          ll_to_earth(50.4501, 30.5234), 200 * 1000) @> ll_to_earth(float8("order".lattitude), float8("order".longtitude)
      )
      ;