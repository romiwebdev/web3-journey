// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract KentangCoin {
    // Nama token
    string public name = "KentangCoin";
    
    // Simbol token (misal: BTC, ETH)
    string public symbol = "KENTANG";
    
    // Total supply (jumlah token yang dicetak)
    uint256 public totalSupply = 1000000;
    
    // Mapping untuk simpan saldo pemegang token
    mapping(address => uint256) public balances;

    // Constructor: Dipanggil sekali saat contract dibuat
    constructor() {
        balances[msg.sender] = totalSupply; // Semua token milik pembuat contract
    }

    // Fungsi transfer token ke orang lain
    function transfer(address penerima, uint256 jumlah) public {
        require(balances[msg.sender] >= jumlah, "Saldo tidak cukup!");
        balances[msg.sender] -= jumlah;
        balances[penerima] += jumlah;
    }
}