//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//Mapping
//How to declare mapping {simple and nested}
//Set, Get, Delete

// ["alice", "bob", "charlie"]
// {"alice": true, "bob":true, "charlie":true}
contract Mapping {
    mapping ( address => uint ) public balances;
    mapping ( address => mapping ( address => bool )) public isFriend;

    function examples() external {
        balances[msg.sender] = 123;

        uint bal = balances[msg.sender];
        uint bal2 = balances[address(1)]; // not set yet .'. default = 0

        balances[msg.sender] += 456; //updating the value to 123 + 456 = 579
        delete balances[msg.sender];  //will reset it to the default value === 0
    }
}