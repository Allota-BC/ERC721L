// SPDX-License-Identifier: MIT
// ERC721L Contracts v4.2.3
// Creators: Chiru Labs

pragma solidity ^0.8.4;

/**
 * This Helper is used to return a dynamic value in the overridden _startTokenId() function.
 * Extending this Helper before the ERC721L contract give us access to the herein set `startTokenId`
 * to be returned by the overridden `_startTokenId()` function of ERC721L in the ERC721LStartTokenId mocks.
 */
contract StartTokenIdHelper {
    uint256 public startTokenId;

    constructor(uint256 startTokenId_) {
        startTokenId = startTokenId_;
    }
}
