// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

/*
Fallback executed when 
-function does not exist 
-directly send ETH
*/

contract Fallback {

    event Log(string func, address sender, uint value, bytes data);
    fallback () external payable {
        emit Log("fallback", msg.sender, msg.value, msg.data);
    }

    receive() external payable {
        emit Log("receive", msg.sender, msg.value, "");
    }
}