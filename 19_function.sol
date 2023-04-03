//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Function{
    function returnmany()public pure returns(uint,bool,uint){
       return (1,true,2);
    }

    function named() public pure returns(uint x,bool y,uint z){
        return (1,true,2);
    }


    //return values can be assigned to their name
    //in this return statement can be omitted
    function assigned()public pure returns(uint x,bool y,uint z){
        x=1;
        y=true;
        z=2;
    }

    //destructing assignment
    function destructingassignment()public pure returns(uint,bool,uint,uint,uint){
        (uint x,bool y,uint z)=returnmany();

        //values can be left out
        (uint i, ,uint b)=(4,5,6);

        return (x,y,z,i,b);
    }
}


//call function with key-value inputs
contract xyz{
    function somefunctionwithmanyinput(
        uint x,
        uint y,
        uint z,address a,bool b,
        string memory c
    ) public pure returns(uint){}

    function callFunc() external pure returns(uint){
        return somefunctionwithmanyinput(1,2,3,address(0),true,"x");
    }

    // function callFuncWithKeyvalue()external pure returns(uint){
    //     return somefunctionwithmanyinput({a:address(0),b:true,c:"x",x:1});
    // }
}