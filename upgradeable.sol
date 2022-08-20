pragma solidity >=0.5.0;

contract Upgradeable {
    address public storageContract;
    constructor (address _storageContract) public {
        storageContract = _storageContract;
    }

    // A sample function that you could implement for buying tokens for demonstration purposes 
    function buyTokens() public {
        // Do your logic for buying tokens for instance, calculating how many he will get for the msg.value he sent and so on. to later update the storage information 
        // Create the storage contract instance 

        Storage s = Storage(storageContract);
        s.setMyNumber(10);
    }
}

contract Storage {
    uint256 public myNumber;
    function setMyNumber(uint256 _myNumber) public {
        myNumber = _myNumber;
    }
}