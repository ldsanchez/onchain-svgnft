// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "base64-sol/base64.sol";

contract SVGNFT is ERC721URIStorage {
    uint256 public tokenCounter;

    event CreatedSVGNFT(uint256 indexed tokenId, string tokenURI);

    constructor() ERC721("SVG NFT", "svgNFT") {
        tokenCounter = 0;
    }

    function create(string memory _svg) public {
        _safeMint(msg.sender, tokenCounter);
        // imageURI
        string memory imageURI = svgToImageURI(_svg);
        // tokenURI
        string memory tokenURI = formatTokenURI(imageURI);
        _setTokenURI(tokenCounter, tokenURI);
        emit CreatedSVGNFT(tokenCounter, tokenURI);
        tokenCounter++;
    }

    function svgToImageURI(string memory _svg)
        public
        pure
        returns (string memory)
    {
        // convert svg to ImageURI => data:image/svg+xml;base64,<Base64-encoding>
        string memory baseURL = "data:image/svg+xml;base64,";
        string memory svgBase64Encoded = Base64.encode(
            bytes(string(abi.encodePacked(_svg)))
        );
        string memory imageURI = string.concat(baseURL, svgBase64Encoded);
        return imageURI;
    }

    function formatTokenURI(string memory _imageURI)
        public
        pure
        returns (string memory)
    {
        string memory baseURL = "data:application/json;base64,";
        return
            string.concat(
                baseURL,
                Base64.encode(
                    bytes(
                        string.concat(
                            '{"name": "Elizabeth Peratrovich SVG NFT",',
                            '"description": "On-chain SVG NFT based on Boring Avatars art",',
                            '"atributes": "",',
                            '"image": "',
                            _imageURI,
                            '"}'
                        )
                    )
                )
            );
    }
}
