pragma solidity ^0.8.7;

//function modifier - reuse code befroe and / after function 
//Basic, inputs, sandwich

contract FunctionModifier {
   bool public paused;
   uint public count;

   function setPause(bool _paused) external {
       paused =_paused;
   }
    //basic
   modifier whenNotPaused() {
       require(!paused, "paused");
       _;
   }

   function inc() external whenNotPaused {
       count += 1;
   }

   function dec() external whenNotPaused {
       count -= 1;
   }
    //inputs
   modifier cap(uint _x) {
       require(_x < 100, "x >= 100");
       _;
   }

   function incBy(uint _x) external whenNotPaused cap(_x) {
       count += _x;
   }

   //sandwich
   modifier sandwich() {
       count += 10;
       _;
       count *= 2;
   }
   function foo() external sandwich {
       count += 1;
   }
}