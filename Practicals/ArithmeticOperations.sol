// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract ArithmeticOperations{
    int private num1 = 20;
    int private num2 = 5;

    int private sum;
    int private subtract;
    int private multiply;
    int private divide;

    function Add() public returns (int){
        sum = num1 + num2;
        return sum;
    }

    function Subtract() public returns (int){
        subtract = num1 - num2;
        return subtract;
    }

    function Multiply() public returns (int){
        multiply = num1 * num2;
        return multiply;
    }

    function Divide() public returns (int){
        divide = num1 / num2;
        return divide;
    }

}