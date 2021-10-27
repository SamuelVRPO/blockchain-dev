pragma solidity ^0.6.0;

contract TodoList {
    uint256 public favoriteNumber;

    function store(uint256 _favoriteNumber) private {
        favoriteNumber = _favoriteNumber;
    }
}