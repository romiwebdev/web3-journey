

# 📘 Progress Belajar Web3

 # Hari 1

## 🧠 Materi yang Dipelajari

- **Web3** adalah konsep internet generasi berikutnya yang terdesentralisasi.
- Data dan kontrol tidak dikuasai oleh satu pihak (seperti perusahaan besar), melainkan tersebar di jaringan pengguna.
- Salah satu teknologi inti Web3 adalah **Blockchain**, yaitu sistem pencatatan data transaksi secara aman, transparan, dan tidak dapat diubah sembarangan.
- Blockchain menyimpan data di banyak komputer (node), sehingga memastikan keamanan dan ketahanan jaringan.

## 💻 Praktik Hari Ini

### Mencoba Demo Blockchain
Saya mencoba mengunjungi [Blockchain Demo](https://blockchaindemo.io/) untuk simulasi visual blockchain.

## 📜 Smart Contract Pertama: Mesin Kopi Digital

### 🧩 Konsep Dasar

Saya mulai dengan membuat analogi sederhana: **mesin kopi digital berbasis smart contract**. Konsep ini membantu memahami bagaimana logika bisnis bisa diotomatisasi di atas blockchain.

### 💡 Cara Kerja:
- Pengguna mengirim sejumlah ether sebagai pembayaran.
- Jika nilai yang dikirim sesuai atau melebihi harga kopi (misalnya `1 ether`), maka kopi "dikeluarkan" (simulasi lewat event atau token).
- Jika nilai kurang dari yang dibutuhkan, smart contract memicu error dan tidak memproses transaksi.
- Uang otomatis dikembalikan jika kondisi tidak terpenuhi.



### 🔗 Link untuk Mencoba:
👉 [Coba di Remix Ethereum IDE](https://remix.ethereum.org/)

### 🧑‍💻 Contoh Kode Solidity Lengkap:

```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CoffeeMachine {
    uint256 public price = 1 ether;

    event CoffeeDispensed(address indexed buyer);

    function buyCoffee() public payable {
        require(msg.value >= price, "Uang tidak cukup!");

        emit CoffeeDispensed(msg.sender);
    }

    function refund() public {
        payable(msg.sender).transfer(address(this).balance);
    }
}
```

Berikut adalah tampilan smart contract di Remix IDE:

![Smart Contract Mesin Kopi](coffee-contract.png)