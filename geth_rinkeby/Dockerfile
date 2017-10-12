FROM ubuntu
MAINTAINER "Quinten De Swaef"
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:ethereum/ethereum
RUN apt-get update
RUN apt-get install -y ethereum wget git vim
EXPOSE 8545
EXPOSE 30303
EXPOSE 30303/udp

# To run a rinkeby light node:
CMD geth --fast --rinkeby --datadir=$HOME/.rinkeby --rpc --rpcapi="eth,network,web3" --rpcaddr "0.0.0.0" --rpccorsdomain "*"


