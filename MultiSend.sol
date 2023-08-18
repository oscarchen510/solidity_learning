// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MultiSend {
    address public owner;

    constructor() {
        owner = msg.sender;
    }
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }
    function Multisend(address[] calldata recipients, uint256[] calldata amounts) external payable onlyOwner{ //external的資料位置需要用memory或calldata
        require(recipients.length == amounts.length, "Number of recipients must match number of amounts");
        for(uint i=0;i<recipients.length;i++){
            address recipient = recipients[i];
            uint256 amount = amounts[i];
            require(recipient != address(0), "Invalid recipient address");//如果不等於0x00
            require(amount > 0, "Amount must be greater than zero");
            require(owner.balance >= amount, "Insufficient contract balance");

            payable(recipients[i]).transfer(amount);

            //calldata is a special data location that contains the input data of a transaction or function call.
            //memory is used to store temporary data during the execution of a function.
        }
        
    }
}
//["0x5B38Da6a701c568545dCfcB03FcB875f56beddC4","0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2"],[2,3]
