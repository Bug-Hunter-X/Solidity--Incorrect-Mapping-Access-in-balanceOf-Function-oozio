# Solidity Bug: Incorrect Mapping Access
This repository demonstrates a common error in Solidity involving the incorrect use of mappings. The `balanceOf` function attempts to access the mapping using the function name instead of the address of the owner. 

## Bug Description
The `balanceOf` function is incorrectly accessing the `balanceOf` mapping. It needs to access the mapping using the provided address `_owner` to get the balance of that specific address.  This leads to incorrect balances being reported.

## Bug Solution
The corrected `balanceOf` function correctly accesses the mapping using the owner's address. This ensures that the correct balance is returned.

## How to reproduce the bug
1. Compile the code in `bug.sol` using a Solidity compiler.
2. Deploy the contract.
3. Observe that the balance will return unexpected values (likely 0) because of the incorrect usage of the mapping.