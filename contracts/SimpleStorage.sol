// SPDX-License-Identifier: MIT
pragma solidity 0.7.6;

contract SimpleStorage2 {
    // Variables 
    uint public storedInt;
    string public storedString;
    uint[] public arrayInt;
    address public owner;
    
    // Eventos
    event SetInt(uint toSet);
    event SetString(string toSet);
    event PushArray(uint pushed);
    
    // Modificadores
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    
    // Constructor
    constructor() {
        owner = msg.sender;
    }
    
    // Metodos
    function setInt(uint toSet) public onlyOwner {
        storedInt = toSet;
        emit SetInt(toSet);
    }
    
    function setString(string memory toSet) public onlyOwner {
        storedString = toSet;
        emit SetString(toSet);
    }
    
    function pushArray(uint toSet) public onlyOwner {
        arrayInt.push(toSet);
        emit PushArray(toSet);
    }
}
