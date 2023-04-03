//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// contract LocalVariable{

//     uint256 public mynumber;

//     function local() public pure returns(uint256){
//          //variables defined inside the function scope
//          //not store on the blockchain
//          uint256 i=345;
//          return i; 
//     }
// }

contract globalvariable{
    address public owner;

    constructor(){
        owner=msg.sender;
    }
}