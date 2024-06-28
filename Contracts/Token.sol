// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;



contract CustomToken {

    string public tokenName = "IRIS";
    string public tokenAbbrv = "ROD";
    uint public totalTokens = 0;

    mapping(address => uint) public accountBalances;

    function mint(address _to, uint _amount) public {
        totalTokens += _amount;
        accountBalances[_to] += _amount;
    }

    function burn(address _from, uint _amount) public {
        require(accountBalances[_from] >= _amount, "Insufficient balance to burn");
        totalTokens -= _amount;
        accountBalances[_from] -= _amount;
    }
}
