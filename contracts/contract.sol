/* minimun contract
this just receives data from transactions made by relayers, cheking is not needed
*/

pragma solidity 0.4.25;

contract ethscaler {
    
    
    uint32 public identifier;
    
    event newBatch();
    event Register(address indexed userAddress, uint256 indexed identifier, uint value);
    
    function register() public payable{
        require(msg.value > 0.1 ether);
        require(identifier < 2**32); 
        identifier ++;
        emit Register(msg.sender, identifier, msg.value);
    }
    
    function () public payable {
        emit newBatch();
    }
}
