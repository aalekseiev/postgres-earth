# postgres-earth
Example of calculating distances between Locations on earth using postgres

<pre>
SELECT 
*,
earth_distance(ll_to_earth(49.5, 30.0), ll_to_earth(float8("order".lattitude), float8("order".longtitude))) / 1000
FROM "order"
WHERE earth_box(ll_to_earth(49.5, 30.0), 100 * 1000) @> ll_to_earth(float8("order".lattitude), float8("order".longtitude));
</pre>


<pre>
SELECT 
*,
earth_distance(ll_to_earth(50.4501, 30.5234),ll_to_earth(float8("order".lattitude), float8("order".longtitude))) / 1000 as Distance
FROM "order"
WHERE earth_box(
          ll_to_earth(50.4501, 30.5234), 100 * 1000) @> ll_to_earth(float8("order".lattitude), float8("order".longtitude)
      )
ORDER BY Distance ASC
      ;
</pre>
