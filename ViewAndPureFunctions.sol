pragma solidity ^0.8.7;

contract ViewAndPureFunctions {
    uint public num;
    // View Function
    function viewFunc() external view returns (uint) {
        return num;
    }
    // Pure Function
    function pureFunc() external pure returns (uint) {
        return 1;
    }
    // View Function
    function addToNum(uint x) external view returns(uint) {
        return num + x;
    }
    // Pure Function
    function add(uint x, uint y) external pure returns (uint) {
        return x + y;
    }
}