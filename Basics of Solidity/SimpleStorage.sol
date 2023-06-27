// SPDX-License-Identifier:MIT
pragma solidity 0.8.19; //solidity version

contract SimpleStorage {
// favoriteNumber initialized to 0 if no value is given
// defaulted to internal favoriteNumber
   uint public favoriteNumber; //0

// list of favoriteNumbers (array) [0,34,56]
uint256[] listOfFavoriteNumbers; 

//structs
struct Person{
    uint256 myFavoriteNumber;
    string name;
}
// being explicit and define 1 by 1
// Person public myFriend = Person({myFavoriteNumber:5, name: "Pat"});
// Person public myFriend2 = Person({myFavoriteNumber:6, name: "Peter"});

// Rather calling one by one, we shall consider an array
Person[] public listOfPeople; //[] - default is empty list

// mapping , chelsi -> 234
mapping (string => uint256) public nametofavoriteNumber;


// store function for assigning value t0 a var _favoriteNumber
   function store(uint256 _favoriteNumber) public {
       favoriteNumber = _favoriteNumber;
   }
// view, pure
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }

// creating a function that will allow us to add & update array
// calldata, memory & storage
    function addPerson(string memory _name, uint256 _myFavoriteNumber) public {
        listOfPeople.push( Person(_myFavoriteNumber, _name) );
        nametofavoriteNumber[_name] = _myFavoriteNumber;
    }
}
