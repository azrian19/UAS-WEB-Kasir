<div class="card">
    <div class="card-header">
    <a href="?url=tambah_menu" class="btn btn-primary btn-icon-split">
        <span class="icon text-white-50">
            <i class="fas fa-plus"></i>
        </span>
         <span class="text">Tambah Menu</span>
    </a>
    </div>
    <div class="card-body">
        <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead>
                <tr>
                    <th>Nama</th>
                    <th>Harga</th>
                    <th>Jenis</th>
                    <th>Petugas</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php
                include'koneksi.php';
                $query = mysqli_query ($koneksi, "SELECT * FROM menu");

                while($data = mysqli_fetch_array($query)){ ?>
                <tr>
                    <td><?= $data[1];?></td>
                    <td><?= $data[2];?></td>
                    <td><?= $data[3];?></td>
                    <td><?= $data[4];?></td>
                    <td><a href="?url=edit_menu&id_menu=<?= $data[0]; ?>" class="btn btn-info btn-circle">
                            <i class="fas fa-pen"></i>
                        </a>
                        <a href="?url=del_menu&id_menu=<?= $data[0]; ?>" class="btn btn-danger btn-circle">
                            <i class="fas fa-trash"></i>
                        </a>
                    </td>
                </tr>
                <?php
            }
                ?>
            </tbody>
        </table>
        </div>
    </div>
</div>