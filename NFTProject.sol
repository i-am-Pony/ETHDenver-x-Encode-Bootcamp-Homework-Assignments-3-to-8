// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NFTProject is ERC721 {

    uint256 public totalSupply = 7;

    constructor() ERC721("Volcano NFT", "VNFT") {}

    function mint() public {
        totalSupply += 1;
        _mint(msg.sender, totalSupply);
    }

    function _baseURI() internal pure override returns (string memory) {
        return "ipfs://Qm-your-ipfs-uri";
    }
}