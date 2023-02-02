// SPDX-License-Identifier: MIT;
pragma solidity ^0.8.7;

contract ifElse {
    function example(uint _x) external pure returns (uint) {
        if ( _x <= 10 ) {
            return 1;
        } else if ( _x <= 20 ) {
            return 2;
        } 
        return 3;
    }

    function ternary( uint _y ) external pure returns (uint) {
        return _y <= 10 ? 1 : 2;

        // if ( _y <= 10 ) {
        //     return 1;
        // } else {
        //     return 2;
        // }
    }
}