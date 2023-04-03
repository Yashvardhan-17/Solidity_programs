//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

//solidity supports multiple inheritence.Contracts can inherit other contract by using (is) keyword
//function is going to be overridden by a child contract must be declared as (virtual)
//function that is going to override a parent function must use the keyword override

/*Graph of inheritence
      A
     / \
    B   C
   / \  /
   F  D,E

*/
contract A{
    
    function fun()public pure virtual returns(string memory){
        return "A";
    }
}

//contract inherits another contract by using the keyword 'is'
contract B is A{
    //overrideA.fun()
   
    function fun() public pure virtual override returns(string memory){
        return "B";
   
    }
}
contract C is A{
    //overrideA.fun()

    function fun() public pure virtual override returns(string memory){
        return "C";
    }
}

contract D is B,C{
    //D.fun retuns c
    //since C is the right most parent contract with the function fun()
    function fun() public pure virtual override(B,C) returns(string memory){
        return super.fun();
    }
}

contract E is C,B{
    //E.fun retuns B
    //since B is the right most parent contract with the function fun()
    function fun() public pure virtual override(C,B) returns(string memory){
        return super.fun();
    }
}

//inheritence must be ordered from most base-like" to "most-derived"
//Swapping the order of A and B will throw a compilation error
contract F is A,B{
    function fun()public pure override(A,B)returns(string memory){
        return super.fun();
    }

}