//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//MODIFIERS allows for function reusage: before &/or after function
//Basic, inputs, sandwich

contract functionModifier {

    //BASIC EXAMPLE 

    bool public paused;
    uint public count;

    function setPause( bool _paused) external {
        paused = _paused;
    }

    //MODIFIER

    modifier whenNotPaused() {
        require ( !paused, "PAUSED" );

        _;
    }

    function inc() external whenNotPaused {
        count += 1;
    }

    function dec() external whenNotPaused {
        count -= 1;
    }

    //INPUT EXAMPLE 

    modifier cap( uint _x ) {
        require ( _x < 100 , "_x >= 100");

        _;
    }

    function incBy( uint _x ) external whenNotPaused cap(_x) {
        count += _x;
    }
    

    //SANDWICH EXAMPLE 

    modifier sandwich() {
        //CODE HERE...
        count += 10;

        _;

        //MORE CODE HERE...
        count *= 2;
    }

    function foo() external sandwich {
        count += 1;
    }
}