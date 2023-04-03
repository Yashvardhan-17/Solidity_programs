//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract stateVariables{


    // string public defaultText="This is default";
    // uint256 public defaultNUm=5;

    // bytes public defaultbytes= "Hello";

    // uint256[] public number;
        string public myState;
        uint256 public myNum;

        // contract(string memory _text,uint256 _no)
        // {
        //     myState=_text;
        //     myNum=_no;
        // }
        
        function update(string memory _text,uint _no)public{
            myState=_text;
            myNum=_no;
        }  



}