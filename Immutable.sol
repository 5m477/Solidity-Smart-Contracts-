// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

contract Immutable{
    address public immutable owner;

    constructor() {
        owner = msg.sender;
    }

    // more code here  
    uint public x;
    function foo() external {
        require(msg.sender == owner);
        x += 1;
    }
}