#! /usr/bin/env bash

curl -H "Content-type: application/json" -X POST --data '{"jsonrpc":"2.0","method":"debug_traceCall","params":[{"from": "0xA8Ea391eACD86AB326843579060E42007a5FA93b", "to": "0x03533764ba4800e83ea213211eb577dc79665f23", "data": "0xcfae3217"}, "latest"],"id":1}' http://localhost:8545
