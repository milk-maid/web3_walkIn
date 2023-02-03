//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//@milk-maid 
//_roqbell (BELLO)


contract myENS {

    struct Register {
        address addr;
        string oName;
    }

    Register public register;
    // Register[] public registers;

    mapping( address => Register) public registeredNames;

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "NOT OWNER");

        _;
    }

    event fire(string indexed name, address indexed addr, string message);

    function addName ( string memory desiredName, address _yourAddr ) public onlyOwner {
        require( _yourAddr != address(0), "INVALID ADDRESS");
        Register storage saveTHIS = registeredNames[_yourAddr];
        saveTHIS.addr = _yourAddr;
        saveTHIS.oName = desiredName;

        emit fire(desiredName, _yourAddr, "Enjoy Your ENS"); 
    }
    
    function setOwner( string memory toWhom, address _newOwner ) external onlyOwner {
        require( _newOwner != address(0), "INVALID ADDRESS");
        // Register storage saveTHIS = registeredNames[_newOwner];
        owner = _newOwner;

        emit fire( toWhom , _newOwner, "TAKE RESPONSIBILITY");
    }


    function anyOneCall() external {
        //CODE
    }
}