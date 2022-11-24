// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;
import "contracts/KYC.sol";
contract Consumer2 {
     
    address KYC_CONTRACT_ADDRESS = 0xddaAd340b0f1Ef65169Ae5E41A8b10776a75482d;

    function getKycDetails(string memory adhaarNo) public view returns(KYC.User memory ) {
        KYC c = KYC(KYC_CONTRACT_ADDRESS);
        return c.getData(adhaarNo);
    }
    
    
}

