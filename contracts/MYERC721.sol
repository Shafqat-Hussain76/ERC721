//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC721/presets/ERC721PresetMinterPauserAutoId.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract MYERC721 is ERC721PresetMinterPauserAutoId{
    using Strings for uint256;
   
    constructor() ERC721PresetMinterPauserAutoId("ERC721Assign", "ASN", "https://gateway.pinata.cloud/ipfs/QmQ3cBsDUZ1w6MpQDPM7b8cdSqbNQ3iGSnMH8ZHaFvRT3P/"){

        
    }
    
    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        require(_exists(tokenId), "ERC721Metadata: URI query for nonexistent token");
        string memory baseURI = _baseURI();
        return bytes(baseURI).length > 0 ? string(abi.encodePacked(baseURI, tokenId.toString(), ".json")) : "";
    }
    
}