<?php
$username = $_POST['username'];
$password = $_POST['password'];

include 'koneksi.php';
$validasi =  "SELECT * FROM pengguna WHERE username='$username' AND password=md5('$password')";
$query = mysqli_query ($koneksi,$validasi); 

if(mysqli_num_rows($query) == 0) { ?>
<script>
    alert("Username dan password yang anda masukkan tidak ditemukan");
    windows.location.assign('index.php');
</script>
<?php } else {
    $data = mysqli_fetch_assoc($query);
    session_start();
    $_SESSION["username"] = $username;
    $_SESSION["status"] = $data ['status'];
    if($data ['status'] == 'Kasir')
        header("location:home_kasir.php");
    else if($data['status'] == 'Admin')
        header("location:home_admin.php");
    else 
        header("location:home_manajer.php");
}
?>