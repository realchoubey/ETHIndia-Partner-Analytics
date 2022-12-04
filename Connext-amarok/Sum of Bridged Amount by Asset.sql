SELECT
    "source"."Token Name" AS "Token Name",
    "source"."sum" AS "sum"
FROM
    (
        SELECT
            CASE
                WHEN "source"."asset" = '0x0000000000000000000000000000000000000000' THEN 'null'
                WHEN "source"."asset" = '0x16f63c5036d3f48a239358656a8f123ece85789c' THEN 'KP3R'
                WHEN "source"."asset" = '0x7ea6ea49b0b0ae9c5db7907d139d9cd3439862a1' THEN 'TestToken'
                WHEN "source"."asset" = '0xb4fbf271143f4fbf7b91a5ded31805e42b2208d6' THEN 'wETH'
            END AS "Token Name",
            "source"."sum" AS "sum",
            "source"."asset" AS "asset"
        FROM
            (
                SELECT
                    "connext_amarok_goerli"."origin_transfers"."asset" AS "asset",
                    sum(
                        "connext_amarok_goerli"."origin_transfers"."bridged_amt"
                    ) AS "sum"
                FROM
                    "connext_amarok_goerli"."origin_transfers"
                GROUP BY
                    "connext_amarok_goerli"."origin_transfers"."asset"
                ORDER BY
                    "connext_amarok_goerli"."origin_transfers"."asset" ASC
            ) "source"
    ) "source"
LIMIT
    1048575