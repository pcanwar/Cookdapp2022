// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;
import "./chainlink/interface/AggregatorV3Interface.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

// https://docs.chain.link/docs/ethereum-addresses/
// https://docs.chain.link/docs/data-feeds/price-feeds/addresses/?network=ethereum#Goerli%20Testnet
// in this contract exmaple, there are one interface to get the price 
// chainlink : AggregatorV3Interface file and we only use latestRoundData function 
// IERC20Metadata interface contains IERC20 interface
//  IERC20Metadata Interface functions from the ERC20 standard. (name(), decimals(), and symbol() functions are from ERC20 standard).

contract onChain  {
    // the interface of chainlink is usdETHPriceFeed
    AggregatorV3Interface private usdETHPriceFeed;
    // to store an amount
    uint private amount;

    constructor () {  
        usdETHPriceFeed = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e); // from chainlink feed price site.
        // https://github.com/smartcontractkit/chainlink/blob/develop/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol
    }

    // getEthPriceFeed from chainlink pair address using the function latestRoundData in the interface . 
    // in this function, it only returns the price of this pair 0x8A753747A1Fa494EC906cE90E9f37563A8AF630e as
    // it was added in the constructor
    function getEthPriceFeed () external view returns (int) {
        (,int price,,,) = usdETHPriceFeed.latestRoundData();
        return price / 1e8; // 10 ** 8
    }

}