//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


//error handling require and assert and revert keyword
contract Require{

    // function checkInput(uint256 _input)public view returns(string memory){
    //    require(_input>=0,"invalid uint8");
    //    require(_input<=255,"invalid uint8");

    //    return "input is uint8"; 
    // }


    // bool result;
    // function checkoverflow(uint256 _num1,uint256 _num2)public{
    //     uint256 sum=_num1+_num2;
    //     assert(sum<=255);
    //     result=true;
    // }
     
     function checkoverflow(uint256 _num1,uint256 _num2)public view returns(string memory){
         uint256 sum=_num1+_num2;

         if(sum<0 || sum>255){
             revert("Overflow Exist");
         }
         else
         {
             return ("No Overflow");
         }
     }

}