FROM node:13.14.0

ARG mallet_version=bf25d4f565a75428a1bf81f8a30d83e2f13b37c7
ENV MALLET_VERSION=${mallet_version}

ENV PATH="/root/.nvm/versions/node/v10.16.3/bin/:${PATH}"

# Installation following https://developers.cardano.org/en/virtual-machines/kevm/getting-started/mallet-end-to-end/
RUN \
    curl -s -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash && \
    export NVM_DIR="$HOME/.nvm" && \
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && \
    nvm --version && \
    git clone https://github.com/input-output-hk/mallet && \    
    cd mallet/ && \
    git checkout ${MALLET_VERSION} &&\
    cat .nvmrc && \
    nvm install 10.16.3 && \
    nvm use && \
    npm install && \
    ./mallet --version && \
    npm install -g solc && \
    solcjs --version

WORKDIR /mallet

COPY ./myContract.sol ./

RUN solcjs --bin --abi --base-path . ./myContract.sol

ENTRYPOINT ["./mallet"]