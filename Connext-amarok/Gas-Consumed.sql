SELECT
   date_trunc(
      'hour',
      CAST(
         "connext_amarok_goerli"."origin_transfers"."timestamp" AS timestamp
      )
   ) AS "timestamp",
   sum(
      "connext_amarok_goerli"."origin_transfers"."gas_price"
   ) AS "sum"
FROM
   "connext_amarok_goerli"."origin_transfers"
WHERE
   (
      "connext_amarok_goerli"."origin_transfers"."timestamp" >= CAST(
         (CAST(now() AS timestamp) + (INTERVAL '-30 day')) AS date
      )
      AND "connext_amarok_goerli"."origin_transfers"."timestamp" < CAST(now() AS date)
   )
GROUP BY
   date_trunc(
      'hour',
      CAST(
         "connext_amarok_goerli"."origin_transfers"."timestamp" AS timestamp
      )
   )
ORDER BY
   date_trunc(
      'hour',
      CAST(
         "connext_amarok_goerli"."origin_transfers"."timestamp" AS timestamp
      )
   ) ASC