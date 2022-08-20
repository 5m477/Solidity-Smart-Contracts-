pragma solidity >=0.5.0;
contract Storage {
    uint256 public myNumber;
    function setMyNumber(uint256 _myNumber) public {
        myNumber = _myNumber;
    }
}