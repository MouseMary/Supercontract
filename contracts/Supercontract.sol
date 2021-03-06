pragma solidity ^0.5.0;


import "../contracts/LibrerySwap.sol";

contract Supercontract {
//value a () public pure returns
  uint128[] _values;
  uint128[] _newValues;

  constructor() public {
  }

  function AddValue(uint128 value) public {
    _values.push(value);
  }

  function BublleSort() public {
    //https://ru.wikipedia.org/wiki/%D0%A1%D0%BE%D1%80%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%BA%D0%B0_%D0%BF%D1%83%D0%B7%D1%8B%D1%80%D1%8C%D0%BA%D0%BE%D0%BC
    bool hasSwaps = false;
for (uint128 i = 0; i < _values.length; i ++) {
  for (uint128 j = 0; j < _values.length - i; j++) {
    if(_values[j] > _values[j + 1]){
      (_values[j], _values[j + 1]) = LibrerySwap.SwapValues(_values[j], _values[j + 1]);
      hasSwaps = true;
    }
  }
  if(!hasSwaps) break;
}
}


function SelectionSort() public {
  delete _newValues;
//TODO: https://dotnetfiddle.net/Anbtdf
  for (uint128 i = 0; i < _values.length; i++) {
    uint128 min = _values[i];
    uint128 minIndex = i;
    for (uint128 j = i; j < (_values.length - i); j++) {
      uint128 tmp = _values[j];
      if(tmp < min) {
        tmp = min; //значение элемента потенциально меньшего
        minIndex = j; //индекс элемента потенциально меньшего
      }
    }
   LibrerySwap.SwapValues(_values[i], min);
  }
}

function length() public view returns(uint256) {
  return _values.length;
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