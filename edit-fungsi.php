<?php
include "../koneksi.php";
if(isset($_POST ['edit'])){
    $insertSql = mysqli_query($conn,"INSERT into datapengunjung (nama,alamat,notelepon,email)
    values
    ('$_POST[nama]','$_POST[alamat]','$_POST[notelepon]','$_POST[email]')");
    if($insertSql){
        echo "<script type='text/javascript'>alert('Data Berhasil disimpan...!'); location.href=\"home.php\";</script>";

    }
}
?>