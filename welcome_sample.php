<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}
?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body{ font: 14px sans-serif; text-align: center; background-color: rgb(103, 167, 103);}
    </style>
    <meta charset="UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JanaPadaLoka</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet"> <!-- link for font styles-->

    

        
</head>
<body>
    <!-- <h1 class="my-5">Hi, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b>. Welcome to our site.</h1>
    <p>
        <a href="reset-password.php" class="btn btn-warning">Reset Your Password</a>
        <a href="logout.php" class="btn btn-danger ml-3">Sign Out of Your Account</a>
    </p> -->


    <div class="header" id="header" class="fixed-top header-scrolled">
    <div class="container">
        <div class="navbar">
            <div class="logo">
                <img src="" alt="logo" width="125px">
            </div>
            <nav>
                <ul id="MenuItems">
                    <li> <a href="">Home</a></li>
                    <li> <a href="page.php">Registeration</a></li>

                    <!-- <h1 class="my-5">Hi, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b>. Welcome to our site.</h1> -->
                    <!-- <p> -->
                        <!-- <a href="reset-password.php" class="btn btn-warning">Reset Your Password</a>
                        <a href="logout.php" class="btn btn-danger ml-3">Sign Out of Your Account</a> -->
                    <li> <a href="reset-password.php" >Reset Password</a></li>
                    <li> <a href="logout.php" >Sign-out</a></li>
                    <!-- </p> -->
                    
                    
                    
                </ul>
            </nav>
            <img src="images/cart.png" alt="" width="30px" height="30px">
            <img src="images/menu.png" class="menu-icon" onclick="menutoggle()">
        </div>
        <div class="row">
            <div class="col-2">

                <a href="page.php"><h1>Janapada Loka Museum Registration Form</h1></a>

                <br>
            </div>
            <div class="col-2">
                <img src="images/img1.jpg" alt="cover pic" class = "coverpic">
            </div>
        </div>
    </div>
</div>


<!--js for toggle menu-->
<script>
    var MenuItems = document.getElementById("MenuItems");
    MenuItems.style.maxHeight="0px";
    function menutoggle(){
        if(MenuItems.style.maxHeight=="0px"){
            MenuItems.style.maxHeight ="200px"
        }
        else{
            MenuItems.style.maxHeight="0px"
        }
    }
</script> 
</body>
</html>