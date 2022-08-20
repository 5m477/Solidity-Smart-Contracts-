// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

// Visibility 
// Private - only inside contract 
// Internal - only inside contract and child contracts 
// public - inside and outside contract 
// external - only from outside contract 


contract VisibilityBase{
    uint private x = 0;
    uint internal y = 1;
    uint public z = 2;

    function privateFunc() private pure returns(uint) {
    }

    function internalFunc() private pure returns(uint) {
    }

    function publicFunc() private pure returns (uint) {
    }
    function externalFunc() external pure returns (uint) {
    }

    function examples() external view {
        x + y +z;

        privateFunc();
        internalFunc();
        publicFunc();
    }
}

contract VisibilityChild is VisibilityBase {
    function examples2() external view {
        y + z + internalFunc() + publicFunc();
    }
}