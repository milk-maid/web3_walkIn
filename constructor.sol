//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Constructor {
    //Special Functions Thast Are Only called once
    //when a contract is deployed
    address public owner;
    uint public x;

    constructor ( uint _x) {
        owner = msg.sender;
        x = _x;
    }
}