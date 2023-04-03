//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Enum{
    enum status{
        pending,
        shipped,
        Accepted,
        Rejected,
        Canceled
    }

    status public mystatus;
    //returns uint 

        // pending -0
        // shipped -1
        // Accepted -2
        // Rejected -3
        // Canceled-4
        function get() public view returns(status){
            return mystatus;
        }

        function set(status _mystatus) public{
            mystatus=_mystatus;
        }

        function cancel() public{
            mystatus = status.Canceled;
        }

        //delete resets the enum to its first value 0
        function reset() public{
            delete mystatus;
        }


}