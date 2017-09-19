SELECT 
*,
earth_distance(ll_to_earth(50.4501, 30.5234),ll_to_earth(float8("order".lattitude), float8("order".longtitude))) / 1000
FROM "order"
WHERE earth_box(
          ll_to_earth(50.4501, 30.5234), 110 * 1000) @> ll_to_earth(float8("order".lattitude), float8("order".longtitude)
      );




