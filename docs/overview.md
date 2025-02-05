# Overview

ERC721L is an improved implementation of the [ERC721](https://eips.ethereum.org/EIPS/eip-721) Non-Fungible Token Standard that supports minting multiple tokens for close to the cost of one.

## Announcements

> **📢 Version 4.x introduces several breaking changes.  
> [Please refer to the migration guide for more details.](migration.md)**

_We highly recommend reading the migration guide_, **especially** _the part on [`supportsInterface`](migration.md?id=supportsinterface) if you are using with OpenZeppelin extensions_ (e.g. ERC2981).

## Installation

```
npm install --save-dev erc721l
```

## Usage

Once installed, you can use the contracts in the library by importing them:

```solidity
pragma solidity ^0.8.4;

import "erc721l/contracts/ERC721L.sol";

contract Lota is ERC721L {
    constructor() ERC721L("Lota", "AZUKI") {}

    function mint(uint256 quantity) external payable {
        // `_mint`'s second argument now takes in a `quantity`, not a `tokenId`.
        _mint(msg.sender, quantity);
    }
}
```
