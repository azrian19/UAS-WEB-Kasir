<?php

    session_start();

    $nama = $_POST['nama'];
    $harga = $_POST['harga'];
    $jenis = $_POST['jenis'];
    include 'koneksi.php';
    $query = mysqli_query ($koneksi, "INSERT INTO menu VALUES ('','$nama','$harga',
    '$jenis','$_SESSION[username]')");

    if($query){?>
        <script>
            alert("Data Menu sudah disimpan!");
            window.location.assign('home_manajer.php?url=input_menu');
        </script>
    <?php
    }else{ ?>
        <script>
            alert("Data Gagal disimpan!");
            window.location.assign('home_manajer.php?url=tambah_menu');
        </script>
    <?php
    }
?>