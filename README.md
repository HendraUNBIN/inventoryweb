## *:Sumber Informasi: Inventoryweb*
Aplikasi ini bisa anda gunakan untuk mengontrol stock barang khususnya Galon Air Mineral yang anda miliki sehingga jelas transaksi keluar dan masuk barang tersebut juga mempermudah kontrol barang tersebut.
<br><br>
Untuk tampilannya sudah kami pasang template admin `bootstrap v5` yaitu `sash admin`.

## *:sparkles: Fitur*
* **Dashboard**
* **Jenis Barang**
* **Satuan Barang**
* **Merk Barang**
* **Barang**
* **Customer**
* **Barang Masuk**
* **Barang Keluar**
* **Laporan Barang Masuk**
* **Laporan Barang Keluar**
* **Laporan Stok Barang**
* **Setting Website**
* **Setting Hak Akses user per Role**
* **Setting Menu (bisa tambah menu atau bisa hapus menu)**

## *:electric_plug: Plugin*
* **Yajra Datatables**
* **SweetAlert**
* **jQuery**
* **Datetime picker**

## *:gear: Requirement*
<p>
<img alt="gambar" src="https://img.shields.io/badge/PHP%20-%5E8.1-green"/>
<img alt="gambar" src="https://img.shields.io/badge/Node JS%20-%5E16.14.0-green"/>
<img alt="gambar" src="https://img.shields.io/badge/Npm%20-%5E8.3.1-green"/>
<img alt="gambar" src="https://img.shields.io/badge/Composer%20-%5E2.3.9-green"/>
</p>

## *:rocket: Instalasi*
#### :arrow_right: Clone Project / Download File
Clone Project dengan perintah terminal `gitbash` sebagai berikut:
```
git clone https://github.com/HendraUNBIN/inventoryweb.git
```
Atau bisa klik tombol download Zip dan extrak file tersebut
#### :arrow_right: Buat Database
Jalan kan PHPMyAdmin atau Tools MySQL,  misalnya Heidy
Buat Database `db_inventoryweb`
Load file `db_inventoryweb.sql` untuk Export 

Setting `DB_DATABASE`, `DB_USERNAME`, `DB_PASSWORD` yang ada di file `.env` sesuai Nama Database mysql kalian

#### :arrow_right: Set Up
Buka Terminal di proyek folder Anda dan jalankan perintah dibawah ini:
```
composer install
```
```
php artisan storage:link
```
#### :arrow_right: Import Database
Import file database `db_inventoryweb.sql` yang ada di folder `database/db` ke phpmyadmin 

#### :arrow_right: Jalankan Aplikasi
```
php artisan serve
```
copy & paste `http://127.0.0.1:8000/` ke browser anda.

#### :arrow_right: Login Default
username: `superadmin` password: `123456`
<br>
username: `admin` password: `123456`
<br>
username: `operator` password: `123456`
<br>
username: `manajer` password: `123456`

## *:desktop_computer: Preview*

