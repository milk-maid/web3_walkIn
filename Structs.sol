//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Structs {
    struct Car{
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;

    function examples() external {
        Car memory toyota = Car( "Toyota", 1990, msg.sender);
        Car memory lambo = Car({model: "lamborghini", year: 1980, owner: msg.sender});
        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2000;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        //INITIALIZING IN MEMORY AND PUSHING TO THE ARRAY atvthe same time to make it available in state
        cars.push(Car("Ferrari", 1999, msg.sender));

        Car storage _car = cars[0];  //to allow for value update
        _car.year = 1999;
        delete _car.owner; //it'll go to the default

        delete cars[1]; //reset the index1 element to its defaults
    }
}