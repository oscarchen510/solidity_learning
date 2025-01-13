// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Variable{

    // state Variables
    uint public myUint = 1 ; // uint == uint256
    int public myInt = -1 ; // int == int256

    string public myString = "Hello world"; // 知道特定資料大小使用byte
    bytes32 public myByte32 = "Hello world";

    address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    struct MyStruct {
        uint256 myUint256;
        string myString;
    }

    MyStruct public myStruct = MyStruct(1, "Hello world");

    // local Variables
    function getValue() public pure returns(unit){
      uint value = 1;
      return value;
    }
}
