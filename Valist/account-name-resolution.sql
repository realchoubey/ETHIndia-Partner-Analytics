SELECT
    "valist_mumbai"."accounts"."name" AS "name",
    "valist_mumbai"."accounts"."id" AS "id",
    "valist_mumbai"."accounts"."meta_u_r_i" AS "meta_u_r_i",
    "valist_mumbai"."accounts"."block_time" AS "block_time",
    "valist_mumbai"."accounts"."block_number" AS "block_number"
FROM
    "valist_mumbai"."accounts"
LIMIT
    1048575