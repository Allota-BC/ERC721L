// SPDX-License-Identifier: MIT
// ERC721L Contracts v4.2.3
// Creators: Chiru Labs

pragma solidity ^0.8.4;

import './ERC721LMock.sol';

contract ERC721LTransferCounterMock is ERC721LMock {
    constructor(string memory name_, string memory symbol_) ERC721LMock(name_, symbol_) {}

    function _extraData(
        address from,
        address to,
        uint24 previousExtraData
    ) internal view virtual override returns (uint24) {
        if (from == address(0)) {
            return 42;
        }
        if (to == address(0)) {
            return 1337;
        }
        return previousExtraData + 1;
    }

    function setExtraDataAt(uint256 index, uint24 extraData) public {
        _setExtraDataAt(index, extraData);
    }
}
