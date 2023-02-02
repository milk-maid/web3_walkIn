//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//Array: can be dynamic or fixed size
// Initialization
//Insert(push), get, update, delete, pop, length.
//Creating Array in Memory
//Returning Array from function
//NOTE: The Bigger The Array The More The SIZE...

contract Array {
    //Initialize a dynamic array as a STATE VARIABLE
    uint[] public nums = [1, 2, 3];
    //A FIXED ARRAY here
    uint[3] public numsFixed = [4, 5, 6];

    function example() external {
        nums.push(4); // add 4 to the last part of the dynamuc array
        uint x = nums[1]; //get the element at index 1 and assign it to x
        nums[2] = 777; //update the index 2 element
        delete nums[1]; //delete: set the index 1 element to it default(0)
        nums.pop(); //remove the last element from the array hereby length reduces
        uint arrLen = nums.length; //get the length of the array

        //CREATE ARRAY IN MEMORY

        uint[] memory arr = new uint[](5); //array created in memory
                                            //must be FIXED SIZE: 5 in this case
                                            //operations like push() and pop() are not allowed
                                            //only allow for update
        arr[1] = 123;
    }

    //copy the state variable(nums which is an array of uint) into memory & then return it
    function returnArray() external view returns( uint[] memory ) {
        return nums;
    }

    //NOTE : Retuening Array from a function is not RECOMMENDED...BEWARE of GAS!!!
}