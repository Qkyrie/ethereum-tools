FROM ubuntu
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:ethereum/ethereum
RUN apt-get update
RUN apt-get install -y ethereum wget git vim
ADD rinkeby.json rinkeby.json
RUN geth --datadir=$HOME/.rinkeby init rinkeby.json
EXPOSE 8545
EXPOSE 30303
EXPOSE 30303/udp

# To run a rinkeby light node:
CMD geth --fast --networkid=4 --datadir=$HOME/.rinkeby --bootnodes="enode://a24ac7c5484ef4ed0c5eb2d36620ba4e4aa13b8c84684e1b4aab0cebea2ae45cb4d375b77eab56516d34bfbd3c1a833fc51296ff084b770b94fb9028c4d25ccf@52.169.42.101:30303?discport=30304" --rpc --rpcapi="eth,network,web3" --rpcaddr "0.0.0.0" --rpccorsdomain "*"


