// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract counter{
    uint public count;

    function increment() external{
        count+=1;
    }
}

interface Icounter{
    function count()external view returns(uint);

    function increment() external;
}

contract Mycontract{
    function incrementCounter(address _counter)external pure{
        Icounter(_counter).increment;
    }
    function getcount(address _counter)external view returns(uint){
        return Icounter(_counter).count();
    }
}

