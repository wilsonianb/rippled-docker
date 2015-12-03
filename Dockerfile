FROM ubuntu:15.10

RUN apt-get update
RUN apt-get -y install gcc git python-software-properties curl scons ctags pkg-config protobuf-compiler libprotobuf-dev libssl-dev python-software-properties libboost-all-dev nodejs 

COPY build-rippled.sh ./

CMD ./build-rippled.sh