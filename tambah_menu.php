<div class="card">
    <div class="card-header">
    <a href="javascript:history.go(-1)" class="btn btn-primary btn-icon-split">
        <span class="icon text-white-50">
            <i class="fas fa-arrow-left"></i>
        </span>
         <span class="text">Kembali</span>
    </a>
    </div>
    <div class="card-body">
        <form class="user" method="post" action="simpan_menu.php">
            <div class="form-group">
                <label>Nama Menu</label>
                <input type="text" name="nama" class="form-control" placeholder="Masukkan Nama Menu">
            </div>
            <div class="form-group">
                <label>Harga</label>
                <input type="text" name="harga" class="form-control" placeholder="Masukkan Harga">
            </div>
            <div class="form-group">
                <label>Jenis </label>
                <select class="from-control" name="jenis">
                    <option value="Makanan">Makanan</option>
                    <option value="Minuman">Minuman</option>
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