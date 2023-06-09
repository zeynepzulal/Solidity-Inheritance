// SPDX-License-Identifier:MIT

pragma solidity ^0.8.17;

//Ownable -> owner , constructor set et, modifier onlyOwner
//Transfarrable -> owner,transferownership fonk olacak
//MyContract diger ikisinden inherit et.

contract Ownable{
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner,"Only owner can call this function");
        _;
    }
}





contract Transfarrable is Ownable{
    function transferOwnership(address _newOwner) public onlyOwner{

    }
}






contract TokenContract is Ownable,Transfarrable{
    string public name;

    constructor(string memory _name){
        name =_name;
    }

    function setName(string memory _name) public{
        name= _name;
    }
}