Welcome to Metaviral Blockchain


---
## Getting Started

```Install golang 1.18```

```
cd 

wget https://golang.org/dl/go1.18.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.18.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
source  ~/.bashrc

go version
cd node-deployer
```
```Clone this repo and build the binery```

```
git clone https://github.com/MetaViralBit/node-deployer
cd node-deployer
bash install.sh
```

# generate validator address 


```
bash genkey.sh
```


```collect validator privatkey and bls key  for staking```

```
cat node/consensus/validator.key && cat node/consensus/bls.key
```
```This command will return your node privatekey and bls key  on you shell . Collect it for next step ```

# Handle stake

```Install Stake Handler```
```
bash staking-handler-install.sh
```

```configure .env with your info like this example```

```
JSONRPC_URL=https://mainnet-rpc.metaviralscan.com/
PRIVATE_KEYS=YOUR_PRIVATKEY_HERE 
BLS_PUBLIC_KEY=YOUR_BLS_KEY_HERE 
STAKING_CONTRACT_ADDRESS=0x0000000000000000000000000000000000001001
MAX_VALIDATOR_COUNT=1000
MIN_VALIDATOR_COUNT=4
```


```Now topup 10000MTV if you want to be a validator```

```after this check your balance ```

```
npm run getbalance 
```

```Stake your mtv to get entry at validator set```

``` get validator set info```
```
npm run info
```



```run this command to stake your MTV```

```
npm run stake
```


# start run your node and start validation 

```
bash start.sh 
```

---
## run for production(ubuntu)

```
sudo apt-get install tmux
tmux new-session -s mtv-node

#run this after opening tmux session 
cd node-deployer/
bash start.sh
```
## run for production(centos)

```
yum install tmux
tmux new-session -s mtv-node
cd node-deployer/
bash start.sh
```
#Detach from the tmux session:
Press Ctrl + B followed by D.



```you can also unstake ```

```
npm run unstake 
```

Copyright 2023 MIND chain 

