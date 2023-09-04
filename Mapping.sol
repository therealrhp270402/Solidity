// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Mapping{
    mapping(address => uint) public isBalance;
    mapping(address => mapping(address => bool)) public isAttacked;

    function example() external {
        isBalance[msg.sender] = 123;
        uint bal = isBalance[msg.sender];
        uint _newBal = isBalance[address(1)]; // 0

        isBalance[msg.sender] = 456; // 123 + 456 = 579

        delete isBalance[msg.sender]; // 0

        isAttacked[msg.sender][address(this)] = true;
    }
}
