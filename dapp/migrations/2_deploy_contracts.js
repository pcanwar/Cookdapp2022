const Oracle = artifacts.require("Oracle.sol");
const Client = artifacts.require("Client.sol");
const onChain = artifacts.require("onChain.sol");

module.exports = async function (deployer, _network, address) {
  // const [admin, reporter, _] = addresses;
  const admin = address[0];

  await deployer.deploy(Oracle, admin);
  const oracle = await Oracle.deployed();

  await deployer.deploy(Client, oracle.address);
  await Client.deployed();

  await deployer.deploy(onChain);
  await onChain.deployed();

};