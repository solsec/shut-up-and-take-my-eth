pragma solidity ^0.4.24;

/**
 * This quiz was created by heuristicwave.
 * @player I hope you enjoyed the problem.
 * If you liked the problem, please visit my blog.
 * https://medium.com/@heuristicwave
 */
 
contract EncodeAndDecode {
    bool public locked = true;
    uint32 private accessKey;
    bytes32 private data;
    string base64Var;
    string URLVar;
    
    constructor (bytes32 _data, uint32 _accessKey, string _base64Var, string _URLVar) public {
        data = _data;
        accessKey = _accessKey;
        base64Var = _base64Var;
        URLVar = _URLVar;
    }
    
    modifier message(uint32 _accessKey) {
        require(uint32(_accessKey) == uint32(accessKey));
        _;
    }

    function usingEtherScan() public constant returns (string) {
        return URLVar;
    }
    
    function plainText(uint32 _AccessKey) public constant message(_AccessKey) returns (string) {
        return base64Var;
    }
    
    function Unlock(bytes32 _answer) public {
        bytes32 answer = _answer;
        
        if (answer == data) {
            locked = false;
        }
    }
    
}