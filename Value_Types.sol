// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ValueTypes {
    bool public a = true;
    uint public b = 123456; // uint =   uint256 0 to 2**256 - 1
                            //          uint 0 to 2**8 - 1
                            //          uint 0 tp 2**16 - 1
    int public c = -123456; // int =    int256 -2**255 to 2**256 - 1
                            //          int128 -2**127 to 2**127 - 1
    int public minInt = type(int).min;
    int public maxInt = type(int).max;
    address public addr = 0xBaF6dC2E647aeb6F510f9e318856A1BCd66C5e19;
    bytes32 public b32 = 0x626c756500000000000000000000000000000000000000000000000000000000;

}
