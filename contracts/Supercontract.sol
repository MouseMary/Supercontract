pragma solidity ^0.5.0;


contract Supercontract {
//value a () public pure returns
  uint128[] _values;

  constructor() public {
  }

  function AddValue(uint128 value) internal {
    _values.push(value);
  }

  function sort() public {
    
  }

  function search(int256 value ) public view returns (int256 returnValue) {
   // if (value > 0) return value;
   returnValue = -1;
    for (uint128 index = 0; (index < _values.length); index++) {
      //
      int256 tmp = (_values[index]);
      if(tmp == value){
        returnValue = (index);
        break;
      }
    }
  }
}