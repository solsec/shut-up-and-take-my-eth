pragma solidity ^0.4.24;

/**
 * This quiz was created by heuristicwave.
 * @player I hope you enjoyed the problem.
 * If you liked the problem, please visit my blog.
 * https://medium.com/@heuristicwave
 */

contract Clairvoyance {

  bool public locked = true;
  uint256 public constant ID = block.timestamp;
  uint8 private flattening = 10;
  uint8 private denomination = 255;
  uint16 private awkwardness = uint16(now);
  uint128 public variable = 7;
  uint64[] array = [23];
  
  struct d {
      uint64 key;
      uint32 value;
  }
  
  address public HeuristicWave = 0x344FbEe17c2d215D364EC5943Bc4a0c7030cfaA1;
  bytes32[3] private data;
  
  constructor (bytes32[3] _data) public {
    data = _data;
  }
  
  function unlock(bytes16 _key) public {
    require(_key == bytes16(data[2]));
    locked = false;
  }
  
}