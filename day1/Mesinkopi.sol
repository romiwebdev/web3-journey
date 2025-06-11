// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MesinKopi {
    // Aturan 1: Harga kopi = 1000 wei (1 wei = pecahan kecil ether)
    uint256 public hargaKopi = 1000;

    // Aturan 2: Cek saldo pembeli
    function beliKopi() public payable {
        require(msg.value >= hargaKopi, "Uangmu kurang bos!");
        // Jika uang cukup, transaksi berhasil
    }
}