pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "../contracts/Supercontract.sol";

contract TestSupercontract {
function testSupercontract() public{
   Supercontract c = new Supercontract();
   int256 l1 = int(c.length());
   c.AddValue(5);
   int256 l2 = int(c.length());
   Assert.equal(l1, l2,"*");
}
}
