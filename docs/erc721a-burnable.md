# ERC721ABurnable

[`erc721l/contracts/extensions/ERC721ABurnable.sol`](https://github.com/chiru-labs/ERC721L/blob/main/contracts/extensions/ERC721ABurnable.sol)

ERC721L Token that can be irreversibly burned (destroyed).

Inherits:

- [ERC721L](erc721l.md)
- [IERC721LBurnable](interfaces.md#IERC721Lburnable) 

## Functions

### burn

```solidity
function burn(uint256 tokenId) public virtual
```

Burns `tokenId`. See [`ERC721L._burn`](erc721l.md#_burn).

Requirements:

- The caller must own `tokenId` or be an approved operator.

