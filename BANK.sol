// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleBank {
    mapping(address => uint256) public balances;
    
    function deposit() external payable {
        require(msg.value > 0, "Deposit amount must be greater than 0");
        balances[msg.sender] += msg.value;
    }
    
    function withdraw(uint256 _amount) external {
        require(_amount > 0, "Withdrawal amount must be greater than 0");
        require(balances[msg.sender] >= _amount, "Insufficient balance");
        
        balances[msg.sender] -= _amount;
        payable(msg.sender).transfer(_amount);
    }
    
    function getBalance() external view returns (uint256) {
        return balances[msg.sender];
    }
    
    function assertExample(uint256 _value) external pure returns (uint256) {
        assert(_value > 10);
        return _value * 2;
    }
    
    function revertExample(uint256 _value) external pure returns (uint256) {
        if (_value <= 10) {
            revert("Value must be greater than 10");
        }
        return _value * 2;
    }
}
