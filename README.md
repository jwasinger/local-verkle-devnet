# Local Verkle Testnet

## Requirements

docker, docker-compose installed

## Usage

```
# you may have to run this as root in order to wipe a db that was previously-created by this script
./recreate_db_and_import_accts.sh

# spin up geth and the faucet (rpc on http://127.0.0.1:8545)

docker-compose up
```

The docker image of Geth used in this example is built from the top-level Dockerfile in https://github.com/gballet/go-ethereum/tree/verkle-trie-proof-in-block-rebased.  This is the working branch for the initial Verkle-trie changes made in Geth.  These changes enable the client to produce blocks with Verkle proofs of accessed-prestate embedded in them.
