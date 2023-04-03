//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


contract While{

    uint256[] data;
    uint256 k=0;

    // function loop()public returns(uint256[] memory){
    //     while(k<5)
    //     {
    //        data.push(j);
    //        j++;
    //     }
    //     return data;
    // }


    // function loop()public returns(uint256[] memory){
    //     do{
    //         k++;
    //         data.push(k);
    //     }while(k<5);

    //     return data;
    // }

    //for loop
    function loop()public returns(uint256[] memory){
        
        for(uint256 i=0;i<5;i++){
            data.push(i);
        }

        return data;
    }

    
}