pragma solidity >=0.4.22 <0.8.0;

contract DappToken {

    string public name = "DApp Token";
    //symbol refers to the name that your token has on an e.g. exchange
    string public symbol = "DAPP";
    string public standard = "DApp Token v1.0";
    uint256 public totalSupply;

    event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 _value
    );

    mapping(address => uint256) public balanceOf;

    constructor(uint256 _initialSupply) public {
        balanceOf[msg.sender] = _initialSupply;
        //allocate the initial supply
        totalSupply = _initialSupply;
    }

    //Transfer
    function transfer(address _to, uint256 _value) public returns (bool success) {
    //Exception if account doesn't have enough
    require(balanceOf[msg.sender] >= _value);    
    //transfer the balance 
    balanceOf[msg.sender] -= _value;
    balanceOf[_to] += _value;
    //transfer event
    emit Transfer(msg.sender, _to, _value);
    //return a boolean
    return true;
    }
}
