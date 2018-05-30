pragma solidity ^0.4.23;

import "./StandardToken.sol";

contract KaetaruToken is StandardToken {
  /* Token Info */
  string public constant name = "Kaetaru Token";
  string public constant symbol = "KAERU";
  uint8 public constant decimals = 18;
  uint256 public constant INITIAL_SUPPLY = 30000000000 * (10 ** uint256(decimals));

  constructor() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
    emit Transfer(0x0, msg.sender, INITIAL_SUPPLY);
  }
}
