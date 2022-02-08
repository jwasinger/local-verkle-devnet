#! /bin/env bash

rm -rf geth-data
mkdir geth-data

./geth --datadir geth-data init genesis.json
./geth --datadir geth-data account import faucet_private_key --password faucet_password
./geth --datadir=geth-data --snapshot --nodiscover --http --http.addr=127.0.0.1 --http.api=web3,eth,net,debug --vmodule="rpc=12,eth=12,p2p=12" --nodiscover --unlock 0xA8Ea391eACD86AB326843579060E42007a5FA93b --password faucet_password --allow-insecure-unlock --mine --miner.threads 1 console
