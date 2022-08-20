// SPDX-License-Identifier: MIT


pragma solidity ^0.8.3;

contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }
    function bar() public pure virtual returns (string memory) {
        return "A";
    }
}

contract B {
    function foo() public pure returns (string memory) {
        return "B";
    }
    function bar() public pure returns (string memory) {
        return "B";
    }
}