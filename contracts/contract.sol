/* minimun contract
this just receives data from transactions made by relayers, cheking is not needed
*/

pragma solidity 0.4.25;

contract ethscaler {
    
    event batchreceived();
    
    function () public payable {
        emit batchreceived();
    }
}
