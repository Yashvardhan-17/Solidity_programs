//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract LearnFunction{
    uint public myint;

    function getinfo()public view returns(uint){
        return myint;
    }

    function update(uint _myint)public{
        myint=_myint;
    }

    function get(uint256 _a,uint256 _b) public view returns(uint256){
        uint256 number= _a+_b;
        return number;
    }
    
}