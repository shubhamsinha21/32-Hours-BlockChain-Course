// Writing again StorageFactory code here and importing createSimpleStorageContract
// this time not codes of 2 different contract in the same file

// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {SimpleStorage, addition} from "./SimpleStorage.sol";

contract StorageFactory{

// uint256 public favoriteNumber
// type visibility name

    SimpleStorage mySimpleStorage;
    addition public myAddition;
// calling SimpleStorage type from Simplestorage contract--

// list of simple storage contract
    SimpleStorage[] public listOfSimpleStorageContracts;



    function createSimpleStorageContract() public {
// how does the storage factory knows how does the SimpleStorageFactory looks like
        mySimpleStorage = new SimpleStorage();
        listOfSimpleStorageContracts.push(mySimpleStorage);
        myAddition = new addition();
    }


    function storageFactoryStore(uint256 simpleStorageIndex, uint256 SimpleStorageNumber) public {
        // storagefactory function containing two variables: index & number
        // for this, we need two things: 
        // Address
        // ABI (technically, a lie just need the function selector)
        // the compiler automatically knows what the API is, because compiler is the one that generates the API and 
        // we know where the address is because we have a list of addresses 

        SimpleStorage mySimpleStorageIndexValue =listOfSimpleStorageContracts[simpleStorageIndex];
        mySimpleStorageIndexValue.store(SimpleStorageNumber);
    }

    function storeFactoryGet(uint256 simpleStorageIndex) public view returns (uint256){
        SimpleStorage mySimpleStorageIndexValue = listOfSimpleStorageContracts[simpleStorageIndex];
        return mySimpleStorageIndexValue.retrieve();
    }

}