//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Datatypes{
    bool public hey;//its default value is always false
    bool public no=true;

    // uint8 //range 0-2**8 - 1 //255
    // uint16 //range 0-2**16-1 //65535
    // uint256 //range 0-2**256-1 

    uint8 public u8=1;
    uint16 public u256=456;
    uint256 public u =123;
    
   //for negative numbers
    int256 public s=256;
    int256 public s1=-256;

    //add min and max
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    //Array
    bytes1 a;

    //address
    address public myaddress;

    //Default
    bool public defaultBool;//false
    uint public defaultuint;//0
    int public defaultint;//0
    address public myaddr; //0x0000000




}