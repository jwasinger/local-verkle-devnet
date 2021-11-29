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
