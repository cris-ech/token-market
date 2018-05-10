pragma solidity ^0.4.22;

import "openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract TestToken20 is StandardToken {
    string public name = "TestToken";
    string public symbol = "TT";
    uint8 public decimals = 5;
    uint public INITIAL_SUPPLY = 700000;

    constructor() public {
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
    }

}