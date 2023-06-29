// Writing again StorageFactory code here and importing createSimpleStorageContract
// this time not codes of 2 different contract in the same file

// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {SimpleStorage, addition} from "./SimpleStorage.sol";

contract StorageFactory{

// uint256 public favoriteNumber
// type visibility name

    SimpleStorage public mySimpleStorage;
    addition public myAddition;
// calling SimpleStorage type from Simplestorage contract--

// list of simple storage contract


    function createSimpleStorageContract() public {
// how does the storage factory knows how does the SimpleStorageFactory looks like
        mySimpleStorage = new SimpleStorage();
        myAddition = new addition();

    }

}