SELECT
    CAST(
        "connext_amarok_goerli"."destination_transfers"."reconciled_timestamp" AS date
    ) AS "reconciled_timestamp",
    sum(
        "connext_amarok_goerli"."destination_transfers"."bridged_amt"
    ) AS "sum"
FROM
    "connext_amarok_goerli"."destination_transfers" FULL
    JOIN "connext_amarok_goerli"."origin_transfers" "Origin Transfers" ON "connext_amarok_goerli"."destination_transfers"."bridged_amt" = "Origin Transfers"."bridged_amt"
GROUP BY
    CAST(
        "connext_amarok_goerli"."destination_transfers"."reconciled_timestamp" AS date
    )
ORDER BY
    CAST(
        "connext_amarok_goerli"."destination_transfers"."reconciled_timestamp" AS date
    ) ASC