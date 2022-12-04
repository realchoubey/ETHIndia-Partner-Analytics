SELECT
    "source"."status" AS "status",
    "source"."count" AS "count"
FROM
    (
        SELECT
            "connext_amarok_goerli"."destination_transfers"."status" AS "status",
            count(*) AS "count"
        FROM
            "connext_amarok_goerli"."destination_transfers"
        GROUP BY
            "connext_amarok_goerli"."destination_transfers"."status"
        ORDER BY
            "connext_amarok_goerli"."destination_transfers"."status" ASC
    ) "source"
WHERE
    "source"."count" > 0
LIMIT
    1048575