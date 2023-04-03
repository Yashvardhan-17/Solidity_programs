//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


contract Mapping{
    //mapping from address to uint
    mapping(address=>uint) public myMap;

    function get(address _addr) public view returns (uint){
        return myMap[_addr];
    }

    function set(address _addr,uint _i)public{
        myMap[_addr]=_i;
    }

    function remove(address _addr)public{
        delete myMap[_addr];
    }

}

contract nestedmapping{
    mapping(address=>mapping(uint=>bool)) public nested;

    function get(address _addr,uint _i)public view returns(bool){
        return nested[_addr][_i];
    }

    function set(address _addr,uint _i,bool _bo)public{
        nested[_addr][_i]=_bo;
    }

    function remove(address _addr1,uint _i)public{
        delete nested[_addr1][_i];
    }
}