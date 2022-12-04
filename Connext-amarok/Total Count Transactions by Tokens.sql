SELECT
    "connext_amarok_goerli"."origin_transfers"."asset" AS "asset",
    CAST(
        "connext_amarok_goerli"."origin_transfers"."timestamp" AS date
    ) AS "timestamp",
    count(*) AS "count"
FROM
    "connext_amarok_goerli"."origin_transfers"
GROUP BY
    "connext_amarok_goerli"."origin_transfers"."asset",
    CAST(
        "connext_amarok_goerli"."origin_transfers"."timestamp" AS date
    )
ORDER BY
    "connext_amarok_goerli"."origin_transfers"."asset" ASC,
    CAST(
        "connext_amarok_goerli"."origin_transfers"."timestamp" AS date
    ) ASC