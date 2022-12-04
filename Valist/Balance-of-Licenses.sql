SELECT "valist_mumbai"."licenses"."balance" AS "balance", count(*) AS "count"
FROM "valist_mumbai"."licenses"
GROUP BY "valist_mumbai"."licenses"."balance"
ORDER BY "valist_mumbai"."licenses"."balance" ASC