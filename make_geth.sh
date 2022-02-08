#! /bin/env bash

(cd ../go-ethereum-verkle && make geth && cp build/bin/geth ../local-verkle-devnet)
