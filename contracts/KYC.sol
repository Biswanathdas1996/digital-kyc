// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract KYC {

    struct User {
        string name;
        uint age;
        string userAddress;
        string contactNo;
        address myAddress;
    }

    mapping (string => User) userList;


    function addMyData(string memory name, uint age, string memory userAddress, string memory contactNo, string memory adhaarNo) public    {
        userList[adhaarNo]= User(name, age, userAddress, contactNo,  msg.sender) ;
    }

    function getData(string memory adhaarNo) public  view returns (User memory){
        return userList[adhaarNo];
    } 


}