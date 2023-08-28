# SimpleBank Smart Contract

This is a basic Solidity smart contract that implements a simple bank-like system. Users can deposit and withdraw funds, and there are examples showcasing the usage of `require()`, `assert()`, and `revert()` statements.

## Contract Functions

### `deposit()`

Allows users to deposit Ether into their account.

- Parameters: None
- Visibility: External
- Payable: Yes
- Reverts: If the deposit amount is not greater than 0.

### `withdraw(uint256 _amount)`

Allows users to withdraw Ether from their account.

- Parameters: `_amount` (uint256) - The amount of Ether to withdraw.
- Visibility: External
- Payable: No
- Reverts:
  - If the withdrawal amount is not greater than 0.
  - If the user's balance is less than the withdrawal amount.

### `getBalance()`

Returns the balance of the caller's account.

- Parameters: None
- Visibility: External
- Payable: No

### `assertExample(uint256 _value)`

Demonstrates the usage of the `assert()` statement.

- Parameters: `_value` (uint256) - Value to check.
- Visibility: External
- Pure: Yes
- Reverts: If `_value` is not greater than 10.

### `revertExample(uint256 _value)`

Demonstrates the usage of the `revert()` statement.

- Parameters: `_value` (uint256) - Value to check.
- Visibility: External
- Pure: Yes
- Reverts: If `_value` is less than or equal to 10.

## Usage

1. Deploy the smart contract on a compatible Ethereum network using a Solidity compiler version of 0.8.0 or higher.
2. Interact with the contract functions using a tool like Remix or other Ethereum development environments.
3. Ensure you send the appropriate amount of Ether when interacting with payable functions.

## License

This smart contract is released under the MIT License. For details, please see the [LICENSE](LICENSE) file.

