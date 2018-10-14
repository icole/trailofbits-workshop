pragma solidity 0.4.25;
import "bonus.sol";

contract TestToken is MintableToken {

    address echidna_caller = 0x00a329c0648769a73afac7f9381e08fb43dbea70;

    constructor() MintableToken(10000) {
      owner = echidna_caller;
    }

    function echidna_caller_cannot_mint_more_than_10000() public view returns(bool) {
      return balances[echidna_caller] <= 10000;
    }
}
