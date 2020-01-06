# Tezos
All information about Tezos

# Installation guide
http://tezos.gitlab.io/mainnet/introduction/howtoget.html

# Snapshots

Archive: https://snapshots.tulip.tools/#/

Full: https://api.github.com/repos/Phlogi/tezos-snapshots/releases/latest

# RPC's endpoints
`curl https://teznode.letzbake.com/chains/main/blocks/587776`

bunch of endpoints: https://rpc.tulip.tools/#/

# Scripts

# All
```
sudo apt install -y rsync git m4 build-essential patch unzip bubblewrap wget
wget https://github.com/ocaml/opam/releases/download/2.0.1/opam-2.0.1-x86_64-linux
sudo cp opam-2.0.1-x86_64-linux /usr/local/bin/opam
sudo chmod a+x /usr/local/bin/opam
git clone https://gitlab.com/tezos/tezos.git
cd tezos
git checkout alphanet
opam init --bare
make build-deps
eval $(opam env)
make
export PATH=~/tezos:$PATH
source ./src/bin_client/bash-completion.sh
export TEZOS_CLIENT_UNSAFE_DISABLE_DISCLAIMER=Y
```

## Step 1 — Update and Install Dependencies
```
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install make m4 gcc aspcud curl bubblewrap
sudo apt-get install ocaml opam
sudo apt-get install -qq -yy libgmp-dev libhidapi-dev pkg-config
```

## Step 2 — Install the latest OPAM compiler
```
wget https://raw.github.com/ocaml/opam/master/shell/opam_installer.sh -O — | sh -s /usr/local/bin
sh <(curl -sL https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh)
```

## Step 3 — Download and Unpack the latest Tezos software, then navigate to the folder.
```
wget https://gitlab.com/tezos/tezos/-/archive/betanet/tezos-betanet.tar.gz
tar -zxvf tezos-betanet.tar.gz
cd tezos-betanet
```

## Step 4 — Update OPAM and switch to the latest OPAM compiler
```
opam init
opam update
opam switch create 4.06.1
opam switch set 4.06.1
eval $(opam config env)
```

Fix 2.0.0 version error, get package from https://github.com/ocaml/opam/releases/tag/2.0.0: 
```
sudo cp <downloaded file> /usr/local/bin/opam
sudo chmod a+x /usr/local/bin/opam
```

## Step 5 — Install Tezos
```
make build-deps
make
```

## Step 6 — Set up and run your Tezos node
```
./tezos-node identity generate
./tezos-node config init
./tezos-node config update --rpc-addr=127.0.0.1:8732
./tezos-node run
```
