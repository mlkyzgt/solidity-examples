// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17; 

contract FindDuplicates {
    function findDuplicates(uint[] memory numbers) public pure returns (uint[] memory) {
        uint[] memory duplicates = new uint[](numbers.length);
        uint duplicateIndex = 0;
        
        for (uint i = 0; i < numbers.length; i++) {
            bool isDuplicate = false;
            for (uint j = 0; j < i; j++) {
                if (numbers[i] == numbers[j]) {
                    isDuplicate = true;
                    break;
                }
            }

            if (isDuplicate==true) {
                bool added = false;
                for (uint k = 0; k < duplicateIndex; k++) {
                    if (duplicates[k] == numbers[i]) {
                        added = true;
                        break;
                    }
                }
                if (added==false) {
                    duplicates[duplicateIndex] = numbers[i];
                    duplicateIndex++;
                }
            }
        }
        
        uint[] memory result = new uint[](duplicateIndex);
        for (uint i = 0; i < duplicateIndex; i++) {
            result[i] = duplicates[i];
        }
        
        return result;
    }
}
