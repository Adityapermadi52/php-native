<?php
include "../koneksi.php";
session_start();
$tampil = mysqli_query($conn,"SELECT * FROM datapengunjung")

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Data Pengunjung </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Data Pengunjung Toya Bungkah Kintemani </h2>
  <p>Selamat Datang <b><?php echo $_SESSION['nama']?></b> Silakan mengisi data pengunjung dibawah ini....!</p> 
 <p><a href ="tambah.php"><button type="button" class="btn btn-primary">Tambah Data</button></p></a>    
  <table class="table table-dark table-hover">
    <head>
      <tr>
        <th class="text-center">No</th>
        <th class="text-center">Nama</th>
        <th class="text-center">Alamat</th>
        <th class="text-center">No.Telepon</th>
        <th class="text-center">Email</th>
        <th class="text-center">Aksi</th>
      </tr>
    </thead>
    <tbody>
    <?php
     $no=1;
     while($r=mysqli_fetch_array($tampil)){
        echo 
        "<tr>
            <td>$no</td>
            <td >$r[nama]</td>
            <td>$r[alamat]</td>
            <td>$r[notelepon]</td>
            <td>$r[email]</td>
            <td>
              <a href ='edit.php'><button type='button' class='btn btn-success btn-sm'>Edit</button></a>
              <a href ='hapus.php'><button type='button' class='btn btn-warning btn-sm'>Hapus</button></a>
            </td>
      </tr>";
      $no++;
     }
    ?>
    </tbody>
  </table>
  <p><a href ="../logout.php"><button type="button" class="btn btn-primary">Logout</button></p></a>
</div>
</body>
</html>

