  
// SPDX-License-Identifiier:GPL-3.0
 pragma solidity ^0.4.2; 

contract VicecoinToken  {
        string public name = “ViceCoin Token”
        string public symbol = “VICE”;
        string public standard = “ViceCoinToken v1.0”
        unit256 public  totalSupply;

         event Transfer (
                 address indexed _from,
                 address indexed _to,
                 unit256 _value
);
          event Approval (
                   Address indexed_owner,
                   Address indexed _spender,
                   unit256 _value
);

mapping (address  => unit256) public balanceOf;
mapping (address  => mapping (address  => unit256) public allowance;

function VicecoinToken (unit256 _initialSupply) public { 
       balanceOf [msg.sender] = _initialSupply;
       totalSupply = _initialSupply;

}

function transfer (address _to, unit256, _value) public returns (bool success )   { 
     require (balanceOf [msg.sender] >=  _value);

     balanceOf  [msg.sender]   -= _value;
     balanceOf  [ _to] += _value;

     Transfer  (msg.sender, _to, _value);

      return true;
        
}

function approve (address _spender, unit256 _value)  public returns (bool success)   {
        allowance [msg.sender ] [_spender] = _value;

        Approval(msg.sender, _spender, _value);   
        
        return true;
  }

 function transfer  From(address _from, address _to, unit256 _value) public returns (bool success) {
        require (_value <= balanceOf [ _from] );
        require (_value <= allowance  [_from] [msg.sender]);

        balanceOf [_from] -= _value;
        balanceOf [_to_] += _value;


          allowance [ _from]  [ msg.sender]  _value;
         
          Transfer (_from,  _to, _value);

          return true;
   
           }  
}

/*
ViceCoin is a ERC-20 smart contract token for crypto purchases of Adult content and services (ie, adult entertainment, gambling, alcohol, cosmetic surgery).
Vendors confirm customer legal age. 
Location is verified via opt-in SMS messaging.

ViceCoin Whitepaper:
https://mobidrive.com/sharelink/p/7hqChACNraAcEZciFky4WZ3befvJtADljgDrFxut3oJw

Founder: Jack Rollan
Email: JacquesR@CryptoAssetRating.com 
 https://www.linkedin.com/in/jack-rollan-8a60072
*/


