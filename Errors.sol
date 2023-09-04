// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Error {
    function testRequire(uint _i) public pure {
        require(_i <= 10, "i > 10");
    }

    function testRevert(uint _i) public pure {
        if(_i > 2) {
            // more code
            if(_i > 3) {
                if(_i > 5) {
                    if(_i > 7) {
                        revert ("i > 10");
                    }
                }
            }
        }
    }

    uint public num = 123;
    function testAssert() public view {
        assert(num == 123);
    }

    function foo(uint _i) public {
        // accidantelly updates num
        num += 1;
        require(_i < 10);
    }
}
