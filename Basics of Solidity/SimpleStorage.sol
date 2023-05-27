// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.18;

contract SimpleStorage{

    //boolean, uint, int, address, bytes
    // bool hasFavoriteNumber = true;
    // string favoriteNumberInText = 'five';
    // int256 favoriteInt = -5;
    // address myAddress = 0xC5Bd9A9e4032079206F2fBBe6B73b2155B31B67B;
    // bytes32 favoriteBytes = 'cat';
    // - this is initialized to 0

    uint256 public favoriteNumber ;

     function store(uint256 _favoriteNumber) public  {
        favoriteNumber =  _favoriteNumber;
        
    }

    // view, pure - we can only view - no modeification of state & no reading from blockchain state

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    function add() public pure returns(uint256){
    return (1+1);
    
    }


}