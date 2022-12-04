SELECT
    CAST(
        "connext_amarok_goerli"."origin_transfers"."timestamp" AS date
    ) AS "timestamp",
    sum(
        "connext_amarok_goerli"."origin_transfers"."bridged_amt"
    ) AS "sum"
FROM
    "connext_amarok_goerli"."origin_transfers"
GROUP BY
    CAST(
        "connext_amarok_goerli"."origin_transfers"."timestamp" AS date
    )
ORDER BY
    CAST(
        "connext_amarok_goerli"."origin_transfers"."timestamp" AS date
    ) ASC