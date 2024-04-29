// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17; 

contract FindSum {
    uint[] numbers = [1, 2, 3, 4, 5];

    function findSum() public view returns(uint) {
        uint sum = 0;
        for (uint i = 0; i < numbers.length; i++){
            sum += numbers[i];
        }
        return sum;
    }
}
