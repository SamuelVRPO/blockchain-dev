// SPDX-Licence-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {
    
    // This will get initialized to 0.
    // favoriteNumber is a view function that views the variable and returns its value.
    uint256 NFTHeld;
    
    struct People {
        uint256 NFTHeld;
        string name;
        
    }
    
    People[] public people;
    mapping(string => uint256) public nameToFavouriteNumber;
    
    function store(uint256 _NFTHeld) public {
        NFTHeld = _NFTHeld;
    }
    
    // View functions are reading off the contract without changing the state.
    function retrieve() public view returns(uint256) {
        return NFTHeld;
    }
    
    // memory means _name will only be stored during the execution of the function.
    // storage means it will be stored forecer.
    function addPerson(string memory _name, uint256 _NFTHeld) public {
        people.push(People(_NFTHeld, _name));
        nameToFavouriteNumber[_name] = _NFTHeld;
    }
}