# MyToken Smart Contract

This repository contains the Solidity smart contract for MyToken, an ERC20-like token implemented on the Ethereum blockchain.

## Code Explanation

### Public Variables

The contract defines the following public state variables:

- `tokenName`: A string representing the name of the token, set to "META."
- `tokenAbbrv`: A string representing the abbreviated name of the token, set to "MTA."
- `totalSupply`: An unsigned integer representing the total supply of the token, initially set to 0.

### Mapping Variable

The contract uses a mapping variable called `balances` to keep track of the token balances of different addresses. The keys are Ethereum addresses, and the values are unsigned integers representing the token balance of each address.

### Mint Function

The contract includes a `mint` function, which allows the contract owner to mint new tokens and assign them to a specified address. The minting process is as follows:

1. The function checks if the token balance of the specified address is greater than or equal to the amount being minted.
2. If the condition is true, the minting process proceeds.
3. The total supply of tokens is increased by the specified amount.
4. The token balance of the specified address is increased by the specified amount.

## License

This code is released under the MIT License. See [LICENSE](LICENSE) for more details.
