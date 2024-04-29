// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17; 

contract FindLargest{
    uint[] numbers = [3, 7, 2, 9];

    function findLargest() public view returns(uint) {
        uint max = numbers[0];
        for (uint i = 0; i < numbers.length; i++) {
            if (numbers[i] > max) {
                max = numbers[i];
            }
        }
        return max;
    }
}
