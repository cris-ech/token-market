pragma solidity ^0.4.22;


import "openzeppelin-solidity/contracts/token/ERC721/ERC721Token.sol";

contract TesToken721 is ERC721Token {

    struct DataNFT {
        string name;
        uint number;
    }

    DataNFT[] public dataNFT;
    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    function createDataNFT(string _name, address _to) public{
        require(owner == msg.sender);
        uint id = dataNFT.length;
        dataNFT.push(DataNFT(_name,7));
        _mint(_to, id);


    }
}