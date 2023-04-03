//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Array{
    uint[] public arr;
    uint[] public arr1 = [1,2,3];
    uint[10] public myfixedsizearray;

    function get(uint i)public view returns(uint){
        return arr[i];
    }

    function getarray()public view returns(uint[] memory){
        return arr;
    }

    function push(uint i)public{
        arr.push(i);
    }

    function pop()public{
        arr.pop();
    }

    function getlength() public view returns(uint){
        return arr.length;
    }

    function remove(uint i)public{
        //Delete doesnot change the array length
        //It resets the value at index to its default value
        delete arr[i];
    }
     

    function examples() external{
        //create array in memory only fixed size can be created
        uint[] memory a=new uint[](5);
    }

}


contract arrayremovebyshifting{
    uint[] public arr;

    function remove(uint _index)public{
        require(_index<arr.length,"index out of bound");

        for(uint i=_index;i<arr.length-1;i++)
        {
            arr[i]=arr[i+1];
        }
        arr.pop();
    }

    function test() external{
        arr=[1,2,3,4,5];
        remove(2);
        assert(arr[0]==1);
        assert(arr[1]==2);
        assert(arr[2]==4);
        assert(arr[3]==5);
        assert(arr.length == 4);
        arr=[1];
        remove(0);
        assert(arr.length==0);
        
    }
}