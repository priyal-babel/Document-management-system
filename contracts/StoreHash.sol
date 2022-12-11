pragma solidity ^0.4.17;

contract Contract {
 string ipfsHash;
 
 struct IpfsHash {
	string hash;
 }

 IpfsHash[] public ipfsHashList;
 mapping(string => bool) Hashes;

 function sendHash(string x) public {
   ipfsHash = x;
 }

 function getHash() public view returns (string x) {
   return ipfsHash;
 }

 function addHash(string hash) public{
	require(!Hashes[hash]);

	IpfsHash memory hlist = IpfsHash({
	   hash: hash 
	   });
	Hashes[hash] = true;
	ipfsHashList.push(hlist);
 }

 function getOrderlistCount() public view returns(uint) {
     return ipfsHashList.length;
 }

}


