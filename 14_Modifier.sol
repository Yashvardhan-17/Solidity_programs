//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


//modifier are the code that can be run before and after the function call
//generally used for 3 reason
//Restrict access,validate inpputs,guard against reentrancy hack
contract functionModifier{

    address public owner;
    uint256 public x=10;
    bool public locked;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender==owner,"Not Owner");
        _;
    }

    modifier validatedata(address _addr){
        require(_addr!=address(0),"Not valid address");
        _;
    }


    function changeowner(address _newowner)public onlyOwner validatedata(_newowner){
         owner=_newowner;
    }

    modifier noreentrancy(){
        require(!locked,"No reetrancy");
        locked=true;
        _;

        locked=false;
    }

    function decreement(uint256 i)public noreentrancy{
        x--;
        if(i>1)
        {
            decreement(i-1);
        }
    }
}

