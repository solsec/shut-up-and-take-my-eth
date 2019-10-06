pragma solidity ^0.4.24;

/**
 * This quiz was created by heuristicwave.
 * @player I hope you enjoyed the problem.
 * If you liked the problem, please visit my blog.
 * https://medium.com/@heuristicwave
 */

contract ASCII {
    bool public locked = true;
    bytes32 private data;
    string charVar;
    string binaryVar;
    string decimalVar;
    string hexVar;
    
    constructor (bytes32 _data, string _charVar, string _binaryVar, string _decimalVar, string _hexVar) public {
        data = _data;
        charVar = _charVar;
        binaryVar = _binaryVar;
        decimalVar = _decimalVar;
        hexVar = _hexVar;
    }

    function hint1() public constant returns (string) {
        return charVar;
    }
    
    function hint2() public constant returns (string) {
        return decimalVar;
    }
    
    function hint3() public constant returns (string) {
        return hexVar;
    }
    
    function hint4() public constant returns (string) {
        return binaryVar;
    }
    
    function Unlock(bytes32 _answer) public {
        bytes32 answer = _answer;
        
        if (answer == data) {
            locked = false;
        }
    }
    
}