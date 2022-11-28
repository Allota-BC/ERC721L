// SPDX-License-Identifier: MIT
// ERC721L Contracts v4.2.3
// Creators: Chiru Labs

pragma solidity ^0.8.4;

import '../extensions/ERC721LQueryable.sol';
import '../extensions/ERC721LBurnable.sol';

contract ERC721LQueryableMock is ERC721LQueryable, ERC721LBurnable {
    constructor(string memory name_, string memory symbol_) ERC721L(name_, symbol_) {}

    function safeMint(address to, uint256 quantity) public {
        _safeMint(to, quantity);
    }
}
