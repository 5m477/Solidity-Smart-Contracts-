// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

/*
calling parent functions 
-direct 
-super
   E
 /   \
 F    G
  \ H /
*/

contract E {
    event Log(string message);

    function foo() public virtual {
        emit Log("E.foo");
    }

    function bar() public virtual {
        emit Log("E.bar");
    }
}

contract F is E {
    function foo() public virtual override {
        emit Log("F.foo");
        E.foo();
    }

    function bar() public virtual override {
        emit Log("F.bar");
        super.bar();
    }
}

contract G is E {
    function foo() public virtual override {
        emit Log("G.foo");
        E.foo();
    }
    function bar() public virtual override {
        emit Log("G.bar");
        super.bar();
    }
}