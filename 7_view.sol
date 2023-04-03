//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


//view
contract View{
    uint256 Num1=2;
    uint256 Num2=7;

    //using view to check the state variable
    // function getresults() public view returns(uint256,uint256){
    //     return (num1,num2);
    // }

    // what if i want to calculate
    function getresults()public view returns(uint256 product,uint256 total){
        uint256 num1=20;
        uint256 num2=30;

        product=num1*num2;
        total=num1+num2;
    }
}