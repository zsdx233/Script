#!/bin/sh

# Change the following address to your ETH addr.
ADDRESS=0xaa147b37da164150f668accf38ab7a96f1ddbf4a

USERNAME=$ADDRESS.zotac


POOL=eth.f2pool.com:6688
# Change SCHEME according to your POOL. For example:
# ethash:     Nanopool
# ethproxy:   BTC.com, Ethermine, PandaMiner, Sparkpool  //can do,不同的矿池
# ethstratum: Antpool.com, BTC.com, F2pool, Huobipool.com, Miningpoolhub
SCHEME=ethproxy

./bminer -uri $SCHEME://$USERNAME@$POOL -api 127.0.0.1:1880
