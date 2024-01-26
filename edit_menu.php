<?php
include 'koneksi.php';
$id_menu = $_GET['id_menu'];
$query =mysqli_query($koneksi, "SELECT * FROM menu WHERE id_menu = '$id_menu'");
$data = mysqli_fetch_assoc($query);
?>


<div class="card border-primary">
    <div class="card-header bg-primary">
    <a href="javascript:history.go(-1)" class="btn btn-danger btn-icon-split">
        <span class="icon text-white-50">
            <i class="fas fa-arrow-left"></i>
        </span>
         <span class="text">Kembali</span>
    </a>
    </div>
    <div class="card-body">
        <form class="user" method="post" action="simpan_edit_menu.php">
            <input type="hidden" name="id_menu" value="<?=$data['id_menu'];?>">
            <div class="form-group">
                <label>Nama Menu</label>
                <input type="text" name="nama" value="<?= $data['nama']; ?>" class="form-control">
            </div>
            
            <div class="form-group">
                <label>Harga</label>
                <input type="text" name="harga" value="<?= $data['harga']; ?>" class="form-control">
            </div>

            <div class="form-group">
                <label>Jenis</label>
                <select class="form-control" name="jenis">
                    <?php
                    if($data['jenis'] == 'Makanan'){
                        echo "<option value='Makanan' selected>Makanan</option>";
                        echo "<option value='Minuman'> Minuman</option>";
                    } else {
                        echo "<option value='Makanan'> Makanan</option>";
                        echo "<option value='Minuman' selected>Minuman</option>";
                    }
                    ?>
                </select>
            </div>

            <div class="form-group">
            <button type="submit" class="btn btn-danger btn-icon-split">
                <span class="icon text-white-50">
                    <i class="fas fa-list"></i>
                </span>
                <span class="text">Simpan</span>
            </button>   
            <button type="reset" class="btn btn-danger btn-icon-split">
                <span class="icon text-white-50">
                    <i class="fas fa-eraser"></i>
                </span>
                <span class="text">Kosongkan</span>
            </button>  
            </div>
        </form>
        </div>
    </div>
</div>