// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17; 

contract ReverseArray{
    uint[] numbers = [1, 2, 3, 4, 5];
    function reverseArray() public view returns(uint[] memory) {
        uint[] memory reverse = new uint[](numbers.length);
        for(uint i=0; i<numbers.length; i++){
            reverse[i]=numbers[numbers.length-(i+1)];
        }
        return reverse;
    }
}
 