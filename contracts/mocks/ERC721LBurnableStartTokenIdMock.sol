// SPDX-License-Identifier: MIT
// ERC721L Contracts v4.2.3
// Creators: Chiru Labs

pragma solidity ^0.8.4;

import './ERC721LBurnableMock.sol';
import './StartTokenIdHelper.sol';

contract ERC721LBurnableStartTokenIdMock is StartTokenIdHelper, ERC721LBurnableMock {
    constructor(
        string memory name_,
        string memory symbol_,
        uint256 startTokenId_
    ) StartTokenIdHelper(startTokenId_) ERC721LBurnableMock(name_, symbol_) {}

    function _startTokenId() internal view override returns (uint256) {
        return startTokenId;
    }
}
