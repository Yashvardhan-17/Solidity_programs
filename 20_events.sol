//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Event{
    //event declaration
    //up to 3 parameters can be index

    event Log(address indexed sender,string message);
    event ANotherLog();

    function test()public{
        emit Log(msg.sender,"Hello");
        emit Log(msg.sender,"Hello EVM");
        emit ANotherLog();
    }

}