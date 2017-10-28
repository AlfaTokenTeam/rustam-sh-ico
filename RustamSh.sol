pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract RustamSh is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function RustamSh(address _owner)  UpgradeableToken(_owner) {
    name = "RustamSh";
    symbol = "RSH";
    totalSupply = 10000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}