// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BasicNft is ERC721 {
    uint256 private s_tokenCounter;
    mapping(uint256 tokenId => string tokenUri) private s_tokenIdToUri;

    // this ERC721 contract will launch collection of dogie NFT
    // each dogie NFT will have a unique tokenId
    // so unique nft will based on the contract and the tokenId
    constructor() ERC721("Dogie", "DOG") {
        s_tokenCounter = 0;
        // this s_tokenCounter will be the unique tokenId
    }

    // Let's mint an NFT
    function mintNft(string memory _tokenUri) public {
        s_tokenIdToUri[s_tokenCounter] = _tokenUri;
        _safeMint(msg.sender, s_tokenCounter);
        // this safeMint fn will make the msg.sender balance+1
        s_tokenCounter++;
    }

    function tokenURI(
        uint256 _tokenId
    ) public view override returns (string memory) {
        return s_tokenIdToUri[_tokenId];
        // this tokenUri will return metadata for the NFT
    }

    // Getter Functions
    function getTokenCounter() public view returns (uint256) {
        return s_tokenCounter;
    }
}
