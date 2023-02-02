// SPDX-License-Identifier: MIT;
pragma solidity ^0.8.7;

contract valueTypes {
    bool public b = true;
    uint public u = 132;
    int public i = -1234;
    int public minInt = type(int).min;
    int public maxInt = type(int).max;
    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    bytes32 public b32 = 0x00000000000;
}