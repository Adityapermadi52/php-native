<?php
session_start();
if(isset($_SESSION['login_in'])){
    header("location:../login.php");
}else{

}
?>