# Foundry NFT

We go through creating 2 different kinds of NFTs.

1. An IPFS Hosted NFT
2. An SVG NFT (Hosted 100% on-chain)

## Quickstart

```
git clone https://github.com/worksofallwin/foundry-Basic-NFT.git
cd foundry-Basic-NFT
forge install
forge build
```

# Usage

## Start a local node

```
make anvil
```

## Deploy

This will default to your local node. You need to have it running in another terminal in order for it to deploy.

```
make deploy
```

## Deploy - Other Network

[See below](#deployment-to-a-testnet-or-mainnet)

## Testing

```
forge test
```

or

```
forge test --fork-url $SEPOLIA_RPC_URL
```

### Test Coverage

```
forge coverage
```

### Deploy

1. Deploy (Anvil)

```
make deploy
```

2. Deploy (IPFS NFT)

```
make deploy ARGS="--network sepolia"
```

3. Deploy (SVG NFT)

```
make deploySvg ARGS="--network sepolia"
```

## Scripts

After deploy to a testnet or local net, you can run the scripts.

Using cast deployed locally example:

```
cast send <CONTRACT_ADDRESS> "mintNft()" --private-key <PRIVATE_KEY> --rpc-url $SEPOLIA_RPC_URL
```

## Base64

To get the base64 of an image, you can use the following command:

```
echo "data:image/svg+xml;base64,$(base64 -i ./images/dynamicNft/happy.svg)"
```

Then, you can get the base64 encoding of the json object by placing the imageURI into `happy_image_uri.json` then running:

```
echo "data:application/json;base64,$(base64 -i ./images/dynamicNft/happy_image_uri.json)"
```

## Estimate gas

You can estimate how much gas things cost by running:

```
forge snapshot
```

And you'll see and output file called `.gas-snapshot`

# Formatting

To run code formatting:

```
forge fmt
```

# Thank you!
