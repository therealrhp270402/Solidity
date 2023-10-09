// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Enum {
    enum Status {
        None,
        Pending,
        Shipped,
        Rejected,
        Canceled
    }

    Status public status;

    struct Order {
        address buyer;
        Status status;
    }

    Order[] public orders;

    // return an Enum form the function
    function get() view external returns (Status) {
        return status;
    }

    // Take an Enum as an Input
    function set(Status _status) external {
        status = _status;
    }

    // Update Enum to a spesific Enum
    function ship()external {
        status = Status.Shipped;
    }

    // Delete
    function reset() external {
        delete status;
    }
}
