pragma solidity ^0.5.0;

library LibrerySwap {
    function SwapValues(uint128 val1, uint128 val2) public pure
    returns(uint128 val3, uint128 val4)
    {
    val3 = val2;
    val4 = val1;
    }
}