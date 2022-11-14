# Getting Started with Create React App

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Available Scripts

In the project directory, you can run:

### `yarn start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

The page will reload if you make edits.\
You will also see any lint errors in the console.

### `yarn test`

Launches the test runner in the interactive watch mode.\
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `yarn build`

Builds the app for production to the `build` folder.\
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.\
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `yarn eject`

**Note: this is a one-way operation. Once you `eject`, you can’t go back!**

If you aren’t satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you’re on your own.

You don’t have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn’t feel obligated to use this feature. However we understand that this tool wouldn’t be useful if you couldn’t customize it when you are ready for it.

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).

### Code Splitting

This section has moved here: [https://facebook.github.io/create-react-app/docs/code-splitting](https://facebook.github.io/create-react-app/docs/code-splitting)

### Analyzing the Bundle Size

This section has moved here: [https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size](https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size)

### Making a Progressive Web App

This section has moved here: [https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app](https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app)

### Advanced Configuration

This section has moved here: [https://facebook.github.io/create-react-app/docs/advanced-configuration](https://facebook.github.io/create-react-app/docs/advanced-configuration)

### Deployment

This section has moved here: [https://facebook.github.io/create-react-app/docs/deployment](https://facebook.github.io/create-react-app/docs/deployment)

### `yarn build` fails to minify

This section has moved here: [https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify](https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify)



Deployed:

```sh
dapp git:(main) ✗ truffle migrate --network goerli

Compiling your contracts...
===========================
> Compiling ./contracts/Client.sol
> Compiling ./contracts/Migrations.sol
> Compiling ./contracts/Oracle.sol
> Compiling ./contracts/chainlink/interface/AggregatorV3Interface.sol
> Compiling ./contracts/interface/IOracle.sol
> Compiling ./contracts/onChain.sol
> Compiling ./contracts/uniswap/Interface/IUniswapV2Pair.sol
> Compiling @openzeppelin/contracts/access/Ownable.sol
> Compiling @openzeppelin/contracts/token/ERC20/IERC20.sol
> Compiling @openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol
> Compiling @openzeppelin/contracts/utils/Context.sol
> Artifacts written to /Users/anwar/Documents/cookDapp2022/dapp/src/contracts
> Compiled successfully using:
   - solc: 0.8.0+commit.c7dfd78e.Emscripten.clang


Migrations dry-run (simulation)
===============================
> Network name:    'goerli-fork'
> Network id:      5
> Block gas limit: 30000000 (0x1c9c380)


1_initial_migration.js
======================

   Deploying 'Migrations'
   ----------------------
   > block number:        7953657
   > block timestamp:     1668455421
   > account:             0x58F79666Ef478ed0FC565B814AcAB5d4F4684DE4
   > balance:             0.9983712395310648
   > gas used:            245600 (0x3bf60)
   > gas price:           6.631760867 gwei
   > value sent:          0 ETH
   > total cost:          0.0016287604689352 ETH

   -------------------------------------
   > Total cost:     0.0016287604689352 ETH


2_deploy_contracts.js
=====================

   Deploying 'Oracle'
   ------------------
   > block number:        7953659
   > block timestamp:     1668455421
   > account:             0x58F79666Ef478ed0FC565B814AcAB5d4F4684DE4
   > balance:             0.996437023814286047
   > gas used:            291433 (0x47269)
   > gas price:           5.672165185 gwei
   > value sent:          0 ETH
   > total cost:          0.001653056116360105 ETH


   Deploying 'Client'
   ------------------
   > block number:        7953660
   > block timestamp:     1668455422
   > account:             0x58F79666Ef478ed0FC565B814AcAB5d4F4684DE4
   > balance:             0.994440187538106731
   > gas used:            377949 (0x5c45d)
   > gas price:           5.283348484 gwei
   > value sent:          0 ETH
   > total cost:          0.001996836276179316 ETH


   Deploying 'onChain'
   -------------------
   > block number:        7953661
   > block timestamp:     1668455422
   > account:             0x58F79666Ef478ed0FC565B814AcAB5d4F4684DE4
   > balance:             0.98952882565666198
   > gas used:            993359 (0xf284f)
   > gas price:           4.944196289 gwei
   > value sent:          0 ETH
   > total cost:          0.004911361881444751 ETH

   -------------------------------------
   > Total cost:     0.008561254273984172 ETH

Summary
=======
> Total deployments:   4
> Final cost:          0.010190014742919372 ETH




Starting migrations...
======================
> Network name:    'goerli'
> Network id:      5
> Block gas limit: 30000000 (0x1c9c380)


1_initial_migration.js
======================

   Deploying 'Migrations'
   ----------------------
   > transaction hash:    0x57d55cc857e01fb8f30ed6a55cd9e3b4b3d2ca8fb0640a65e93a8f5330edaa16
   > Blocks: 2            Seconds: 12
   > contract address:    0x2d65fD1ACe2E6A27AaE54515229d0669B84A08c8
   > block number:        7953662
   > block timestamp:     1668455436
   > account:             0x58F79666Ef478ed0FC565B814AcAB5d4F4684DE4
   > balance:             0.9982221597710968
   > gas used:            245600 (0x3bf60)
   > gas price:           7.238763147 gwei
   > value sent:          0 ETH
   > total cost:          0.0017778402289032 ETH


```