// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

interface IERC20 {
    function transfer(address, uint) external;
}

contract Token {
    function transfer (address, uint) external {}
}

contract AbiEncode {
    function test (
        address _contract,
        bytes calldata data
    ) external {
        (bool ok, ) = _contract.call(data);
        require(ok, "call failed");
    }

    // cannot pass an inacurate function
    function encodeWithSignature(
        address to,
        uint amount
    ) external pure returns (bytes memory) {
        return abi.encodeWithSignature("transfer(address,uint256)", to, amount);
    }

    // can pass an inacurate function
    function encodeWithSelector(
        address to,
        uint amount
    ) external pure returns (bytes memory) {
        return abi.encodeWithSelector(IERC20.transfer.selector, to, amount);
    }

    // cannot make inacurate function
    function encodeCall(
        address to,
        uint amount
    ) external pure returns (bytes memory) {
        return abi.encodeCall(IERC20.transfer, (to, amount));
    }
}