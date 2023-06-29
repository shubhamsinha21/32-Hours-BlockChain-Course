// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";

// AddFiveStorage contract - is a child contract of SimpleStorageContract
contract AddFiveStorage is SimpleStorage{ 
    // function sayHello() public pure returns (string memory ){
    //     return "hello";
    // }

    function store(uint256 _newNumber) public override {
        favoriteNumber = _newNumber+5;
    }





}

// pure allows to read & show the value which user enters in the code 
// view allows to read & show the value which user inputs