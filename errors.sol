//SPDX-License-Identifier: MIT;
pragma solidity ^0.8.7;
// require, revert, assert
//gas refunds, state update are reverted
//custom error : save gas

contract Error {
    function testRequire( uint _i ) public pure {
        require( _i <= 10 , "must be < 10");
        //CODE goes here
    }

    function testRevert( uint _i) public pure {
        if ( _i > 10 ) {
            revert ( "i > 10" );
        }
    }

    //REVERT better with nexted statements

    function testRevertDeep( uint _i) public pure {
        if ( _i < 1 ){
            //CODE
            if ( _i < 2 ) {
                //CODE
                if ( _i > 10 ) {
                    revert ( "i > 10" );
                }
            }
        }
    }

    //ASSERT : used to check condition that should always be TRUE

    uint public num = 123;

    function testAsert() public view {
        assert( num == 123);
    }

    function foo( uint _i ) public {
        num += _i;
        require ( _i < 10 );
    }

    //CUSTOM ERROR

    error MyError( address caller, uint _i );

    function testCustomError( uint _i ) public view {
        if ( _i > 10 ) {
            revert MyError( msg.sender, _i);
        }
    }
}