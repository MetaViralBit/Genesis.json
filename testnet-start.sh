sudo firewall-cmd --zone=public --add-port=8545/tcp --permanent
sudo firewall-cmd --zone=public --add-port=10001/tcp --permanent
ufw allow 10001
ufw allow  8545
mtv server --data-dir=node --chain testnet/genesis.json --libp2p 0.0.0.0:10001 --nat 0.0.0.0 --jsonrpc 0.0.0.0:8545 --seal  --block-gas-target 5000000000