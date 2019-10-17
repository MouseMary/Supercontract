pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "../contracts/Supercontract.sol";
import "../contracts/LibrerySwap.sol";

contract TestSupercontract {
   function testSupercontract() public{
      Supercontract c = new Supercontract();
      int256 l1 = int(c.length());
      c.AddValue(5);
      int256 l2 = int(c.length());
      Assert.equal(l1+1, l2, "*");
   }

   function testSwap() public {
     uint128 val1 = 5;
     uint128 val2 = 25;

     uint128 val3;
     uint128 val4;
     (val3, val4) = LibrerySwap.SwapValues(val1, val2);
     bool res1 = (val1 == val4); // проверка что первый аргумент поменялся местами
     bool res2 = (val2 == val3); // проверка что второй аргумент поменялся местами

     bool res = res1 && res2; //вычисление логического И.
//https://github.com/trufflesuite/truffle/blob/develop/packages/core/lib/testing/Assert.sol
     Assert.isTrue(res, "смена местами произведена С ОШИБКОЙ");
   }
}
