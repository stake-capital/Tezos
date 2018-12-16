# Docs: http://tezos.gitlab.io/mainnet/introduction/howtouse.html
# http://tezos.gitlab.io/mainnet/introduction/howtorun.html

## Basic Scripts
### Run node with RPC interface
./tezos-node run --rpc-addr 127.0.0.1

### Get Balance
./tezos-client get balance for stakeCapital

### Receipt for a transaction
./tezos-client rpc get /chains/main/blocks/head/operations

### Review the receipt of the whole block
./tezos-client rpc get /chains/main/blocks/head/metadata
