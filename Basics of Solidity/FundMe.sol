// Get funds from user
// withdraw funds
// set minimum funding value in USD

// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;


contract FundMe{
// uint256 public  myvalue = 1;

    function fund() public payable {
        // allow users to send money
        // have a minimum $ sent
        // 1. How do we send ETH to this contract ?
        // myvalue = myvalue +2;
        require(msg.value > 1e18, "didn't send enough ETH"); // 1E18 = 1  ETH = 1000000000000000000 = 1 * 10 ** 18
  
        // What is a revert ?
        // Undo any actions that have been done, and send the remaining gas back
    }

    // function withdraw() public {
        
    // }

    function getPrice() public  {
        // get the price of eth in term of dollar
        // address 0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419
        // ABI
    }

    function getConversion() public {
        // converts value to its converted value based on its price
    }

}