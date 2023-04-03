//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract EventTicket{
    uint256 public numberofTicket;
    uint256 public ticketprice;
    uint256 public totalamount;
    uint256 public startAt;
    uint256 public endAt;
    uint256 public timerange;
    string public  message="Buy your first EVENT TICKET";

    constructor(uint256 _ticketprice)
    {
        ticketprice=_ticketprice;
        startAt=block.timestamp;
        endAt=block.timestamp+7 days;
        timerange = (endAt-startAt)/60/60/24;
    }

    function buyticket(uint256 _value)public returns(uint256 ticketid){
        numberofTicket++;
        totalamount+=_value;
        ticketid=numberofTicket;
    }

    function getAmount() public view returns(uint256){
        return totalamount;
    }
}