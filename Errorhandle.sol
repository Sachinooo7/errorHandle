// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;


contract HandleError
{

    
int balance;


    function addMoney (int amount)public payable  {
    
     require(amount>0,"i is less than zero.");
    balance=amount;
    }

    function withdraw(int value)public payable{
     if(value>balance)
     {
        revert("balance is less than demand.");
     }
     balance=balance-value;
    } 

    function checkbalance()public view returns(int){
        assert(balance>100);
        return balance;
    }
}