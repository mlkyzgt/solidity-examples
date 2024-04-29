// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17; 

contract FindPrimers {
    uint[] primes;
    uint k=0;
    function findPrimes(uint start, uint end) public returns(uint[] memory) {
       uint i;
        for(i=2;i<end;i++){
            for(uint j=0; j<(end-start+1); j++){
                if((start+j)%i == 0){
                    primes[k]=i;
                    k++;
                }
            }
        }
        return primes;
       }
}
