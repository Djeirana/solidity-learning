// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract TxLifecycleDemo {
    event TxEvent(address indexed sender, uint amount, uint blockNumber);

    function deposit() external payable {
        emit TxEvent(msg.sender, msg.value, block.number);
    }

    function withdraw(uint amount) external {
        payable(msg.sender).transfer(amount);
        emit TxEvent(msg.sender, amount, block.number);
    }
}
