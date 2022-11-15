#  Project
```sh
Install Node.js https://nodejs.org/en/
Create a new dirctory and set up a new npm package. 
Initiate a new npm package: npm init


Install truffle  https://www.trufflesuite.com/
Create an empty truffle/ethereum project: tuffle init . 
Configure the project network and solidity version in truffle-config.js file

Install coingecko API https://www.npmjs.com/package/coingecko-api
Start truffle develop


Compile and deploy the smart contracts
Run an external script
```


# hardhat 

```shell


npx hardhat accounts
npx hardhat compile
npx hardhat clean
npx hardhat test
npx hardhat node
node scripts/sample-script.js
npx hardhat help
```


# Truffle
## Installing Truffle
* Check or verify if Truffle is installed, run ```truffle -v``` in your system.
* If truffle is not installed run: ```npm install -g truffle ```
#### Note(1):
If installing Truffle globally using the command ```sudo``` you need to run the command as ```sudo truffle develop```
 

## Start Truffle 
Use truffle boxes to help you build your dApp. Truffle Boxes contain modules, Solidity contracts & libraries, front-end views and more. More information in [Truffle Boxes](https://www.trufflesuite.com/boxes)

Run ```truffle unbox <box_name>``` To download any boxes from truffle 
For example:
```truffle unbox webpack```
```truffle unbox react```

Download webpack box to help for building the front-end the application- in the terminal use these command
* Create a project directory ```mkdir dirProject```
* Change to the project directory ```cd dirProject```
* Create a project using ```truffle unbox webpack```
* In the project directory run ```truffle develop``` 
* Compile and deploy the smart contract ```migrate --reset```
* Open new Terminal and change directory to app ```cd app``` and then run ```npm run dev```

    * Check URL Truffle: http://127.0.0.1:xxxx


## Configuring Truffle
The configuration file is used to configure the truffle project for for different networks, compilers information(version from solc-bin), and other features. 