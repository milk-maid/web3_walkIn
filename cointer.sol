// SPDX-License-Identifier: MIT;
pragma solidity ^0.8.7;

contract ViewAndPureFunctions {
    int public count;

    function inc() external {
        count += 1;
    }

    function dec() external {
        count -= 1;
    }
}