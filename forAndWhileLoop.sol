// SPDX-License-Identifier: MIT;
pragma solidity ^0.8.7;

contract ForAndWhileLoop {
    function loop() external pure {
        for ( uint i = 0; i < 10; i++) {
            // code here
            if ( i == 3) {
                continue; //ued to SKIP an ITERATION
            }
            // MORE CODE
            if ( i == 7 ) {
                break; // used to BREAK out of the LOOP i.e loop is finished here
            }
            //STILL MORE CODE
        }

        //WHILE LOOP

        uint j = 0;
        while ( j < 10) {
            // code to run
            j++;
        }
    }

    //trial 

    function sum(uint _n) external pure returns (uint) {
            uint s;
            for (uint i = 1; i <= _n; i++) {
                s += i;
            }
            return s;
        }
}