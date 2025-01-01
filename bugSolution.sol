```solidity
function transfer(address _to, uint256 _value) public {
    require(balanceOf[msg.sender] >= _value, "Insufficient balance");
    balanceOf[msg.sender] -= _value;
    balanceOf[_to] += _value;
    emit Transfer(msg.sender, _to, _value);
}

function balanceOf(address _owner) public view returns (uint256) {
    return balanceOf[_owner]; //Corrected: Accessing mapping using _owner
}

mapping (address => uint256) balanceOf;

event Transfer(address indexed from, address indexed to, uint256 value);
```