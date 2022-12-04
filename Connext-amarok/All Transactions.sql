SELECT
    "connext_amarok_goerli"."destination_transfers"."id" AS "id",
    "connext_amarok_goerli"."destination_transfers"."status" AS "status",
    "connext_amarok_goerli"."destination_transfers"."origin_domain" AS "origin_domain",
    "connext_amarok_goerli"."destination_transfers"."destination_domain" AS "destination_domain",
    "connext_amarok_goerli"."destination_transfers"."slippage" AS "slippage",
    "connext_amarok_goerli"."destination_transfers"."origin_sender" AS "origin_sender",
    "connext_amarok_goerli"."destination_transfers"."bridged_amt" AS "bridged_amt",
    "connext_amarok_goerli"."destination_transfers"."asset" AS "asset",
    "connext_amarok_goerli"."destination_transfers"."routers_fee" AS "routers_fee",
    "connext_amarok_goerli"."destination_transfers"."executed_timestamp" AS "executed_timestamp",
    "connext_amarok_goerli"."destination_transfers"."executed_block_number" AS "executed_block_number",
    "connext_amarok_goerli"."destination_transfers"."reconciled_caller" AS "reconciled_caller",
    "connext_amarok_goerli"."destination_transfers"."reconciled_transaction_hash" AS "reconciled_transaction_hash",
    "connext_amarok_goerli"."destination_transfers"."reconciled_timestamp" AS "reconciled_timestamp",
    "connext_amarok_goerli"."destination_transfers"."reconciled_block_number" AS "reconciled_block_number"
FROM
    "connext_amarok_goerli"."destination_transfers"
ORDER BY
    "connext_amarok_goerli"."destination_transfers"."executed_timestamp" DESC
LIMIT
    1048575