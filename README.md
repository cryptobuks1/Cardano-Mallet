# Cardano-Mallet

Docker image for [Mallet](https://github.com/input-output-hk/mallet), a command line utility for deploying Cardano smart contracts and interacting with the Cardano IELE and KEVM testnets developed by IOHK.

## Usage

The following command starts and connects mallet to the KEVM Devnet. The Hello World example contract `myContract.sol` from the [Cardano Developers Documentation](https://developers.cardano.org/en/virtual-machines/kevm/getting-started/mallet-end-to-end/) is already in the image and compiled. This way you can start testing instantly.

```bash
docker run -ti --rm ststolz/cardano-mallet:latest kevm -d ./data
```

Tu execute the test scripts from the [input-output-hk / mallet](https://github.com/input-output-hk/mallet) Repo execute following command.

```bash
docker run -ti --rm --entrypoint node ststolz/cardano-mallet:latest "test/basic-kevm.js"
```



