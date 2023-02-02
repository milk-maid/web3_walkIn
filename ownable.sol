//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//State Variable
//Global Variable
//Function Modifier
//Functions
//Error Handling


contract Ownable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "NOT OWNER");

        _;
    }

    function setOwner( address _newOwner ) external onlyOwner {
        require( _newOwner != address(0), "INVALID ADDRESS");
        owner = _newOwner;
    }

    function onlyOwnerCanCallThisFunct() external onlyOwner {
        //CODE
    }

    function anyOneCall() external {
        //CODE
    }
}