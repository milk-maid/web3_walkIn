// SPDX-License-Identifier: MIT;
pragma solidity ^0.8.7;

contract LocalVariable {
    //LOCAL VARIABLE in action
    uint public i;
    bool public b;
    address public myAddr;

    function foo() external {
        uint x = 123;
        bool f = false;
        // deep dive
        x += 456;
        f = true;

        i = 123;
        b = true;
        myAddr = address(1);
    }
}