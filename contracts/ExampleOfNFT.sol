// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract ERC721Example is ERC721, ERC721URIStorage, Ownable {

    using Counters for Counters.Counter;
    Counters.Counter private _tokenIdCounter;

    using Strings for uint256;

    // metadata URI
    string private _baseMetadata;

    constructor() ERC721("_NFT_", "NFT") {}



    /* Functions: to convert a number into a string : useful when you want to link/merge/concatenate a number with other strings:

    Strings.toString(tokenId): to convert the tokenId to a string using the Strings library.
    abi.encodePacked(...): to encodes it using ABI (Application Binary Interface).
    string(...): to convert the packed ABI-encoded bytes back into a string.
    */

    function safeMint(address to) public  {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, string(abi.encodePacked(Strings.toString(tokenId))));
    }

    /*
    * @notice: only the collection admain change the base uri
    * @param baseURI string is the uri in sting
    */
    function setURI(string calldata _baseURI)  external onlyOwner {
        setBaseURI(_baseURI);
    }

    function burn(uint256 tokenId) public {
        _burn(tokenId);
    }


    /**
     * @dev Base URI for computing {tokenURI}. If set, the resulting URI for each
     * token will be the concatenation of the `baseURI` and the `tokenId`. Empty
     * by default, can be overriden in child contracts.
     */
    function baseURI() public view  returns (string memory) {
        return _baseURI();
    }


    function _burn(uint256 tokenId) internal override(ERC721, ERC721URIStorage) {
        super._burn(tokenId);
    }
    function tokenURI(uint256 tokenId)
        public
        view
        override(ERC721, ERC721URIStorage)
        returns (string memory)
    {
        return super.tokenURI(tokenId);
    }

}


import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";


contract ExampleA is ERC721, IERC721Receiver{
    // mapping(address)

    using Counters for Counters.Counter;
    Counters.Counter private _nftCounter; 

    mapping(uint => uint) public nftTracker;
    constructor() ERC721("ExampleA", "EXA"){}

    function start(address _nftcontract, uint256 _tokenId) external {
        uint _NFTid = nftCounter();
        nftTracker[_NFTid] = _tokenId;
        _mint(msg.sender, _NFTid);
        IERC721(_nftcontract).safeTransferFrom(msg.sender, address(this), _tokenId);
        
    }


    function end(address _nftcontract, uint256 _NFTid) external {
        require(ownerOf(_NFTid) == msg.sender,"Only the Owner of this NFT contract");
        uint _tokenId = nftTracker[_NFTid];
        _burn(_NFTid);
        IERC721(_nftcontract).safeTransferFrom(address(this), msg.sender, _tokenId);

    }


    /* 
    * @notice: a counter of the token id 
    */  
    function nftCounter() private returns(uint256 counterId){
        counterId = _nftCounter.current();
        _nftCounter.increment();
    }


    /**
    * Interface of ERC721 token receiver.
    */
    function onERC721Received(address , address , uint256 , bytes memory) external pure override returns (bytes4){
        return bytes4(keccak256("onERC721Received(address,address,uint256,bytes)"));
    }


}
