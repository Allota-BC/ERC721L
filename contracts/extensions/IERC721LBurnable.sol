// SPDX-License-Identifier: MIT
// ERC721L Contracts v4.2.3
// Creator: Chiru Labs

pragma solidity ^0.8.4;

import '../IERC721L.sol';

/**
 * @dev Interface of ERC721LBurnable.
 */
interface IERC721LBurnable is IERC721L {
    /**
     * @dev Burns `tokenId`. See {ERC721L-_burn}.
     *
     * Requirements:
     *
     * - The caller must own `tokenId` or be an approved operator.
     */
    function burn(uint256 tokenId) external;
}
