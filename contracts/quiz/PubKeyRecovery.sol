pragma solidity ^0.4.24;

contract PubKeyRecovery {
    
    address owner;
    bool public start;
    bool public isComplete;

    function () payable public {
        owner = msg.sender;
        start = true;
    }
    
    function authenticate(bytes publicKey) public {
        require(start == true);
        require(address(keccak256(publicKey)) == owner);

        isComplete = true;
    }
}