pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";


contract  MyNFT is ERC721URIStorage,Ownable{

using Counters for Counters.Counter;
Counters.Counter private token_id;

constructor ()
ERC721("Salik pic","SAL"){}
//this function help to mint nft 
//onlyowner is modifier decalred in ERC721 Library  
function mint(address recepient, string memory tokenUri)public onlyOwner returns(uint _tokenId )
{
    token_id.increment();//this function in ERC21
    uint256 newItemId=token_id.current();
    _mint(recepient,newItemId);
    _setTokenURI(newItemId, tokenUri);
    return newItemId;

}

}