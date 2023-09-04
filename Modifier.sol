// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Modifier {
    bool public paused;
    uint public count;

    function setPaused(bool _paused) external {
        paused = _paused;
    }

    modifier whenNotPaused() {
        require(!paused, "paused");
        _;
    }

    function inc() external whenNotPaused {
        count += 1;
    }

    function dec() external whenNotPaused {
        count -= 1;
    }

    function mul() external whenNotPaused {
        count *= 1;
    }

    function div() external whenNotPaused {
        count /= 1;
    }

    function incBy(uint _x) external whenNotPaused {
        count += _x;
    }

    modifier stack() {
        count += 2;
        _;

        count += 3;
    }

    function foo() external {
        count += 1;
    }
}
