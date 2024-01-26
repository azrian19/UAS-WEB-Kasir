<?php
session_start();
$id_menu = $_POST['id_menu'];
$nama = $_POST['nama'];
$harga = $_POST['harga'];
$jenis = $_POST['jenis'];
$tgl = date('Y-m-d');
include 'koneksi.php';

$query = mysqli_query ($koneksi, "UPDATE menu SET nama = '$nama',harga = '$harga',
        jenis='$jenis', username ='$_SESSION[username]' WHERE id_menu='$id_menu'");

$query2 = mysqli_query ($koneksi, "INSERT INTO log VALUES('','$tgl','$_SESSION[username]', 'Edit menu $nama')");
if($query && $query2) { ?>
    <script>
        alert("Data menu sudah dirubah !");
        window.location.assign('home_manajer.php?url=input_menu');
    </script>
 <?php   
} else { ?>
    <script>
        alert("Data gagal dirubah !");
        window.location.assign('home_manajer.php?url=tambah_menu');
    </script>
    <?php
}

?>