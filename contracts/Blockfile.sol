pragma soliditiy ^0.4.11;

contract Blockfile {

  address transferFrom;
  address transferTo;
  uint paymentAmount;
  string ifpsHash;

  function Blockfile() public {
    transferFrom = msg.sender;
  }

  event TransferOwnership(address _transferTo, address _transferFrom, uint amount);

  function transferOwnership(address _transferTo) public payable returns (bool){
    transferTo = _transferTo;
    transferTo.transfer(msg.value);
    emit TransferOwnership(transferTo, transferFrom, msg.value);
    return true;
  }

  function set(string hash) {
    ifpsHash = hash;
  }

  function get() public view returns (string) {
    return ifpsHash;
  }


}
