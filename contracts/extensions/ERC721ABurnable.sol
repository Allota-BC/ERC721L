// SPDX-License-Identifier: MIT
// ERC721L Contracts v4.2.3
// Creator: Chiru Labs

pragma solidity ^0.8.4;

import './IERC721LBurnable.sol';
import '../ERC721L.sol';

/**
 * @title ERC721ABurnable.
 *
 * @dev ERC721L token that can be irreversibly burned (destroyed).
 */
abstract contract ERC721ABurnable is ERC721L, IERC721LBurnable {
    /**
     * @dev Burns `tokenId`. See {ERC721L-_burn}.
     *
     * Requirements:
     *
     * - The caller must own `tokenId` or be an approved operator.
     */
    function burn(uint256 tokenId) public virtual override {
        _burn(tokenId, true);
    }
}
