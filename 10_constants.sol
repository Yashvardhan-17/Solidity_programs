//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Constants{
    address public constant myadd=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    function getconstant()public return(address){
        return myadd;
    }
}