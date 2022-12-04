SELECT
    (
        CAST(
            date_trunc(
                'week',
                CAST(
                    (
                        CAST(
                            "valist_mumbai"."projects"."block_time" AS timestamp
                        ) + (INTERVAL '1 day')
                    ) AS timestamp
                )
            ) AS timestamp
        ) + (INTERVAL '-1 day')
    ) AS "block_time",
    count(*) AS "count"
FROM
    "valist_mumbai"."projects"
GROUP BY
    (
        CAST(
            date_trunc(
                'week',
                CAST(
                    (
                        CAST(
                            "valist_mumbai"."projects"."block_time" AS timestamp
                        ) + (INTERVAL '1 day')
                    ) AS timestamp
                )
            ) AS timestamp
        ) + (INTERVAL '-1 day')
    )
ORDER BY
    (
        CAST(
            date_trunc(
                'week',
                CAST(
                    (
                        CAST(
                            "valist_mumbai"."projects"."block_time" AS timestamp
                        ) + (INTERVAL '1 day')
                    ) AS timestamp
                )
            ) AS timestamp
        ) + (INTERVAL '-1 day')
    ) ASC