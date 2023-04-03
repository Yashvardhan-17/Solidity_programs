//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Pure{
    uint256 num1=40;
    uint256 num2=30;

    //pure only works doesnt for state variable only works for local variable

    function getData() public pure returns(uint256,uint256){

        uint256 mum1=20;
        uint256 mum2=20;
        uint256 product=mum1*mum2;
        uint256 total=mum1+mum2;
        
         return (product,total);
    }
}