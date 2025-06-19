// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;
contract BlockchainOneWayMsg{
    string x = "Hello Blockchain OneWayMsg";
    uint changeCount;
    address public owner;
    constructor(){
        owner=msg.sender;
    }
    function updateString(string memory _myString) public{
           if(owner == msg.sender)
            x = _myString;
            changeCount++;
    }
}