// SPDX-License-Identifier:MIT

pragma solidity ^0.8.17;

contract Animal {
   string public name;
   constructor(string memory _name){
    name = _name;
   }
   function ozellik() public virtual pure returns(string memory){
       return "beslenmek";
   }
   //virtual sayesinde override edilebilir oldu
}

contract Dog is Animal{ // is = extend
//string public name;
uint public age;
 constructor(string memory _name2, uint _age) Animal(_name2){
// name = _name;
 age = _age;
 }

 function ozellik() public override  pure returns(string memory){
     return "Havlamak";
 }
}

/*
//oppenzepplin -> ERC20 TOKEN protocol
contract UstechToken is ERC20,Ownable{
    //  NAME,Supply,Decimal
    constructor(){

    }
}
*/