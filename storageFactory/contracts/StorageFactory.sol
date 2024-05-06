// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./SimpleStorage.sol";

contract StorageFactory {


    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage ss_contract = new SimpleStorage();
        simpleStorageArray.push(ss_contract);
    }

    function sfStore(uint256 _contractSSIndex, uint _contractSSNumber) public {
        // Address of the contract
        // ABI of the contract -- Application binary interface
        simpleStorageArray[_contractSSIndex].store(_contractSSNumber);
    }

    function sfGet(uint256 _contractSSIndex) public view returns(uint256) {
        return simpleStorageArray[_contractSSIndex].retrieve();
    }

}