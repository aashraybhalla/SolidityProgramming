// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Bank{
    address Owner;
    
 
 
    // function for adding the Ethereum in Account
    function addBalance(uint amount) public returns(uint)
    {
        Balance[Owner] = Balance[Owner] + amount;
 
        return Balance[Owner];
    }

    mapping(address=>uint)Balance;
 
    function getBalance() public view returns(uint)
    {
        return Balance[Owner];
    }
 
    function Transfer(address recipient, uint amount) public
    {
 
        require(Balance[Owner] < amount, "Insufficient Balance");
 
        _transfer(Owner, recipient, amount);
    }
 
    function _transfer(address From, address To, uint Amount) private
    {
        Balance[From] = Balance[From] - Amount;
        Balance[To] = Balance[To] + Amount;
    }
}