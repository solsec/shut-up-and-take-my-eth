pragma solidity ^0.4.24;

/**
 * This quiz was created by heuristicwave.
 * @player I hope you enjoyed the problem.
 * If you liked the problem, please visit my blog.
 * https://medium.com/@heuristicwave
 */
 
contract HintBox {
    
    address private target;    
    event Transfer(string _message, uint256 value);
    
    constructor () public {
        target = msg.sender; 
    }
    
    function() public payable {
       emit Transfer("Thx! For giving me Ether", msg.value);
       target.transfer(msg.value);
    }
    
}