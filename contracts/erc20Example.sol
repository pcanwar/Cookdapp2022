// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract Penny is ERC20, ERC20Burnable {
    constructor() ERC20("Penny", "PNY") {
        _mint(msg.sender, 20 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) external {
        _mint(to, amount);
    }
}


contract Deposit {

    using SafeERC20 for IERC20;

    mapping(address => uint256) public deposits;
    // support ERC20 address
    mapping(IERC20 => bool) private erc20ContractAddress;

    function setAddress(address _contract, bool _mode) external {
        erc20ContractAddress[IERC20(_contract)] = _mode;
    }

    function depostAmount(address contractAddress, uint256 amount) external {
        IERC20(contractAddress).safeTransferFrom(msg.sender, address(this), amount );
        deposits[msg.sender] += amount;
    }

    function withdrawAmount(address contractAddress) external {
        uint256 amount = deposits[msg.sender];
        IERC20(contractAddress).safeTransfer(msg.sender, amount );
    }


}