//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract NFTCount{

    uint public numberofNFT;
     
    //increase NFT
    function addNFT()public{
        numberofNFT+=1;
    }
    
    //decrease NFT
    function deleteNFT()public{
        numberofNFT-=1;
    }
    
    //check NFT
    function checkTotalNFT() public view returns(uint256){
        return numberofNFT;
    }

}