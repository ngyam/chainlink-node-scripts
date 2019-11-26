# Chainlink node scripts

Scripts for setting up chainlink nodes

## Getting started

```bash
git clone https://github.com/ngyam/chainlink-node-scripts.git
cd chainlink-node-scripts

# generate .env
./cenv.sh

# init first run
# YOUR_PORT_NUMBER_HERE is where the container will listen on your host
./run.sh YOUR_PORT_NUMBER_HERE

# save your init credentials
echo "api.user@example.com" > ./.api
echo "api.password" >> ./.api
echo "my_wallet_password" > ./.password
```

When you start the node again, just simply:
```bash
./run.sh
```

## Source

https://docs.chain.link/docs

## Contributing

Please read the [CONTRIBUTING guide](./CONTRIBUTING.md) for code of conduct and for the process of submitting pull requests.

## Versioning

[SemVer](http://semver.org/)

## License

This project is licensed under the GPLv3 License - see the [LICENSE](./LICENSE) file for details.

## FAQ