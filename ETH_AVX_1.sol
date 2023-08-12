// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ETH_AVX_1 {
    uint256 public result;

    function add(uint256 a, uint256 b) public {
        // Using require() to validate inputs
        require(a > 0, "Input 'a' must be greater than zero.");
        require(b > 0, "Input 'b' must be greater than zero.");

        // Performing the calculation
        result = a + b;
    }

    function subtract(uint256 a, uint256 b) public {
        // Using assert() to check for internal errors
        assert(a >= b);

        // Performing the calculation
        result = a - b;
    }

    function divide(uint256 a, uint256 b) public {
        // Using revert() to handle invalid operations
        if (b == 0) {
            revert("Cannot divide by zero.");
        }

        // Performing the calculation
        result = a / b;
    }
}
