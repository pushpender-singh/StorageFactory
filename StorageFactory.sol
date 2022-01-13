//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract storageFactory {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorage() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfstore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber)
        public
    {
        SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(
            _simpleStorageNumber
        );
    }

    function sfretrieve(uint256 _simpleStorageIndex)
        public
        view
        returns (uint256)
    {
        return
            SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]))
                .retrieve();
    }
}
