// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

/**@title simple solidity contract with basic set and get functions and constructor  **/
contract helloWorld{
    string helloVar = "Hello";
    string name;

    /**@notice  initializing constructor sets name variable to _name parameter**/
    constructor(string memory _name){
        name = _name;
    }
    
    /**@notice getFunc get function returns value of name state variable **/
    /** @return name string**/
    function getFunc() public view returns(string memory){
        return name;
    }

    /**@param _name parameter of string type**/
    /**@notice sets name state variable to parameter value passed into function **/
    function setFunc(string memory _name) public {
        name = _name;
    }

    /**@notice function encodes two state variables into bytes and typecasts to string **/
    /** @return string**/
    function HelloWorld() public view returns(string memory){
        return string(abi.encodePacked(helloVar, name));
    }
}