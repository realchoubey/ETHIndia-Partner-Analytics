SELECT
    CAST(
        "connext_amarok_goerli"."origin_transfers"."timestamp" AS date
    ) AS "timestamp",
    count(*) AS "count"
FROM
    "connext_amarok_goerli"."origin_transfers" FULL
    JOIN "connext_amarok_goerli"."destination_transfers" "Destination Transfers" ON "connext_amarok_goerli"."origin_transfers"."status" = "Destination Transfers"."status"
GROUP BY
    CAST(
        "connext_amarok_goerli"."origin_transfers"."timestamp" AS date
    )
ORDER BY
    CAST(
        "connext_amarok_goerli"."origin_transfers"."timestamp" AS date
    ) ASC