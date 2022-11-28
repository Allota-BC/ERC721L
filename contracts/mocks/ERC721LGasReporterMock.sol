// SPDX-License-Identifier: MIT
// ERC721L Contracts v4.2.3
// Creators: Chiru Labs

pragma solidity ^0.8.4;

import '../ERC721L.sol';

contract ERC721LGasReporterMock is ERC721L {
    constructor(string memory name_, string memory symbol_) ERC721L(name_, symbol_) {}

    function safeMintOne(address to) public {
        _safeMint(to, 1);
    }

    function mintOne(address to) public {
        _mint(to, 1);
    }

    function safeMintTen(address to) public {
        _safeMint(to, 10);
    }

    function mintTen(address to) public {
        _mint(to, 10);
    }

    function transferTenAsc(address to) public {
        unchecked {
            transferFrom(msg.sender, to, 0);
            transferFrom(msg.sender, to, 1);
            transferFrom(msg.sender, to, 2);
            transferFrom(msg.sender, to, 3);
            transferFrom(msg.sender, to, 4);
            transferFrom(msg.sender, to, 5);
            transferFrom(msg.sender, to, 6);
            transferFrom(msg.sender, to, 7);
            transferFrom(msg.sender, to, 8);
            transferFrom(msg.sender, to, 9);
        }
    }

    function transferTenDesc(address to) public {
        unchecked {
            transferFrom(msg.sender, to, 9);
            transferFrom(msg.sender, to, 8);
            transferFrom(msg.sender, to, 7);
            transferFrom(msg.sender, to, 6);
            transferFrom(msg.sender, to, 5);
            transferFrom(msg.sender, to, 4);
            transferFrom(msg.sender, to, 3);
            transferFrom(msg.sender, to, 2);
            transferFrom(msg.sender, to, 1);
            transferFrom(msg.sender, to, 0);
        }
    }

    function transferTenAvg(address to) public {
        unchecked {
            transferFrom(msg.sender, to, 4);
            transferFrom(msg.sender, to, 5);
            transferFrom(msg.sender, to, 3);
            transferFrom(msg.sender, to, 6);
            transferFrom(msg.sender, to, 2);
            transferFrom(msg.sender, to, 7);
            transferFrom(msg.sender, to, 1);
            transferFrom(msg.sender, to, 8);
            transferFrom(msg.sender, to, 0);
            transferFrom(msg.sender, to, 9);
        }
    }
}
