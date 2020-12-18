# Cardano-Mallet

Docker image for [Mallet](https://github.com/input-output-hk/mallet), a command line utility for deploying Cardano smart contracts and interacting with the Cardano IELE and KEVM testnets developed by IOHK.

## Usage

```bash
docker run -ti --rm ststolz/cardano-mallet:latest kevm -d ./data
```