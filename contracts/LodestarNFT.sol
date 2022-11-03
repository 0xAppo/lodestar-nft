// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract LodestarNft is ERC721, Ownable {
    uint256 tokenCount;

    constructor() ERC721("LodestarNFT", "LODE") {
        tokenCount = 0;
    }

    function mint(address _to) public onlyOwner {
        _mint(_to, tokenCount);
        tokenCount += 1;
    }
}