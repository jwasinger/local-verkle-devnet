#! /bin/env bash

rm -rf geth-data
mkdir geth-data

# create the db
docker run -v $(pwd)/faucet_password:/root/faucet_password -v $(pwd)/faucet_private_key:/root/faucet_private_key -v $(pwd)/geth-data:/root/geth-data -v $(pwd)/genesis.json:/root/genesis.json -it jwasinger/client-go:verkle-29-11-2021 --datadir /root/geth-data init /root/genesis.json

# import the faucet account
docker run -v $(pwd)/faucet_password:/root/faucet_password -v $(pwd)/faucet_private_key:/root/faucet_private_key -v $(pwd)/geth-data:/root/geth-data -v $(pwd)/genesis.json:/root/genesis.json -it jwasinger/client-go:verkle-29-11-2021 --datadir /root/geth-data account import /root/faucet_private_key --password /root/faucet_password
