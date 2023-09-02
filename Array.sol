// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// Array - dynamic or fixed size
// Functions: Insert (push), get, update, delete, Erase (pop), length
// Creating Array in memory
// Returning array from function

contract Array {
    uint[] public nums;
    uint[3] public fixedSize;

    function examples() external {
        nums.push(4); // [1, 2, 3, 4]
        uint x = nums[1]; // x = 2
        nums[2] = 789; // [1, 2, 789, 4]
        delete nums[1]; // [1, 0, 789, 4]
        nums.pop(); // [1, 0, 789]
        uint len = nums.length;

        // Creating Array in memory
        uint[] memory a = new uint[](5);
        a[1] = 123;
    }

    function returnArray() public view returns(uint[] memory) {
        return nums;
    }
}
