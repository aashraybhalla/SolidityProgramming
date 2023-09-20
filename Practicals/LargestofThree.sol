// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract LargestofThree{

    int private num1 = 10;
    int private num2 = 100;
    int private num3 = 1;

    function LOT() view public returns (int){
        if (num1>num2 && num1>num3){
            return num1;
        }else if(num2>num1 && num2>num3){
            return num2;
        }else{
            return num3;
        }
    }
}