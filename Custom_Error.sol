// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract CustomError {
    error MyError (address caller, uint _i);

    function foo(uint _i) public view {
        if(_i > 10) {
            revert MyError(msg.sender, _i);
        }
    }
}
