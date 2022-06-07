<h3>For get Storage info in Solidity<h3> 
 
 let storage = []

 let getStorage = (index) => (err, res) => {
   storage[index] = res;
 }

 for (var i=0; i<6; i++) {
   web3.eth.getStorageAt(contract.address, i, getStorage(i))
} 