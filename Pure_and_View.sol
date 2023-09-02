// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract PureAndView {
    uint public num = 1;

    function ViewFunc() external view returns(uint) {
        return num;
    }

    function PureFunc() external pure returns(uint) {
        return 1;
    }

    function AddOrSub(uint x) external view returns(uint) {
        return num + x;
    }

    function AddOrSub(uint x, uint y) external pure returns (uint) {
        return x + y;
    }
}
