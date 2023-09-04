// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Ownable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "not the owner");
        _;
    }

    function setOwner(address _newOwner) external onlyOwner {
        require(_newOwner != address(0), "invalid address");
        owner = _newOwner;
    }

    function AnyoneCanCallThisFunction() external {
        // code goes here...
    }

    function OnlyOwnerCanCallThisFunction() external onlyOwner {
        // Another code goes here...
    }
}
