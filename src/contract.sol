contract MyContract {
  mapping (address => uint) balances;
  function add_value(address recv, uint amt) public {
    require(balances[recv] <= 100);
    balances[msg.sender] -= amt;
    if (balances[target] + amt > 100) {
      revert():
    }
    balances[y] += amt;
    assert(balances[recv] <= 100);
  }
}
