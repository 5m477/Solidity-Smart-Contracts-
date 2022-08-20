//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;
// 	147096 gas
contract Constant {
    address public constant MY_ADDRESS = 0xe32BebcBA2AAE0a1D1787FC2d129871326Ab380c;
    uint public constant MY_UINT = 123;
}

//23553 gas
contract Var {
    address public MY_ADDRESS = 0xe32BebcBA2AAE0a1D1787FC2d129871326Ab380c;

}