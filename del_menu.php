<?php
include 'koneksi.php';
    $id_menu = $_GET['id_menu'];

    // Query untuk menghapus data dari tabel menu
    $query = mysqli_query($koneksi,"DELETE FROM menu WHERE id_menu = '$id_menu'");
   
    if ($query) { ?>
    <script>
        alert("Menu sudah dihapus !");
        windows.location.assign('home_manajer.php?url=input_menu');
    </script>
    <?php
    } else { ?>
        <script>
        alert("Menu Gagal dihapus !");
        windows.location.assign('home_manajer.php?url=input_menu');
        </script>
    <?php
    }
?>
