<?php
// /* Database credentials. Assuming you are running MySQL
// server with default setting (user 'root' with no password) */
// define('DB_SERVER', 'localhost');
// define('DB_USERNAME', 'root');
// define('DB_PASSWORD', '');
// define('DB_NAME', 'janapadaloka');
 
// /* Attempt to connect to MySQL database */
// $link = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);
 
// // Check connection
// if($link === false){
//     die("ERROR: Could not connect. " . mysqli_connect_error());
// }

$con = mysqli_connect('localhost','root',"",'janapadaloka');
// mysqli_select_db("janapadaloka", $con);

if($con === false){
    die("ERROR: Could not connect".mysqli_connect_error());
}
// else{
//     echo "Connected";
// }

//get the post records
if(isset($_POST['submit'])){
    $aadhar_no = $_POST['aadhar_number'];
    $name = $_POST['name'];
    $mobile_number = $_POST['mobile_number'];
    $alternate_mobile = $_POST['alternate_mobile'];
    $address = $_POST['address'];
    $postal_code = $_POST['postal_code'];
    $email = $_POST['email'];
    $emergency_mobile = $_POST['enumber'];
    $occupation = $_POST['occupation'];
    $exp = $_POST['exp'];
    $dob = $_POST['dob'];
    $age = $_POST['age'];

    
    $accNumber = $_POST['account_number'];
    $pan_number = $_POST['pan_number'];
    $bank_name = $_POST['bank_name'];
    $holder_name = $_POST['account_holder_name'];
    $branch = $_POST['branch'];
    $ifsc = $_POST['ifsc'];
    $micr = $_POST['micr'];
 


    if(!empty($_FILES["photo"]["name"])){
        $filename = basename($_FILES["photo"]["name"]);
        $filetype = pathinfo($filename,PATHINFO_EXTENSION);
        $allowtype = array('jpg','png','jpeg','gif');
        if(in_array($filetype,$allowtype)){
            $image = $_FILES['photo']['tmp_name'];
            $imgcontent = addslashes(file_get_contents($image));

        }
    }
    
 

  $query = "INSERT INTO resume_table2 (name, mobile_no, alternate_mobile, address, postal_code, email, emergency_contact, occupation, experience, dob, age) 
            values ('.$name.','.$mobile_number.','.$alternate_mobile.','.$address.','.$postal_code.','.$email.','.$emergency_mobile.','.$occupation.',
            '.$exp.','.$dob.','.$age.')"; 

  //$query = "INSERT INTO resume_table2 (aadhar_no) values ('.$aadhar_no.')"; 


  $rs = mysqli_query($con, $query);

    if ($rs){
        echo "Records Inserted";
        $account_insert = ("INSERT INTO account_details values('.$aadhar_no.','.$pan_number.','.$bank_name.','.$accNumber.','.$holder_name.','.$branch.','.$ifsc.','.$micr.')");
        $account = mysqli_query($con,$account_insert);
    }else{
        echo "fail";
     }
}

// mysqli_close($con);
?>