<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form</title>
    <link rel="stylesheet" href="style2.css">
</head>

<body>
    <script type="text/javascript">
        function googleTranslateElementInit() {
        new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
        }
        </script>
    
        <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
    <style>
        label {
            width: 160px;
            text-align: left;
            padding-right: 10px;
        }
        
        input,
        label {
            float: left;
        }
        
        button {
            text-align: left;
        }
        #google_translate_element{
            /* text-shadow: 2px 3px 2px blue; */
            color: black;
            box-shadow: 10px -10px 15px 3px black;
            border-radius: 10px;
            margin:30px;
            padding: 30px;
           border:1px solid black;
        }
        #google_translate_element2{
            /* text-shadow: 2px 3px 2px blue; */
            color: black;
            border-radius: 10px;
            box-shadow: 10px 20px 15px 3px black;
           border:1px solid black;
           padding:30px;
           margin:30px;
        }
        .flex_item{
            
            display: flex;
            flex-direction: column;
        }
        body{
            background-image: url("img.jpg");
        }
        input{
            border-radius: 8px;
        }
        #subit_css{
            
            display:"flex";
            flex-direction: row;
            justify-content: center;
        }
    </style>

    <div class="flex_item">
    <div  id="google_translate_element" >

        <div class="section-header">
            <div class="container">
              <h1>Registration Forms</h1>
              <p> </p>
            </div>
          </div>


        <form action="config.php" method="POST" enctype="multipart/form-data">

            <!-- <div class="section-header">
                <div class="container">
                  <h1>Registration Forms</h1>
                  <p> </p>
                </div>
              </div> -->

            <!-- <h1>Registration Form</h1> -->

            <label for="name">Name: </label>
            <input type="text" name="name" required><br><br>

            <label for="aadhar">Aadhar Number: </label>
            <input type="number" name="aadhar_number" required><br><br>

            <label for="number">Mobile: </label>
            <input type="number" name="mobile_number" required><br><br>

            <label for="number">Alternate Mobile: </label>
            <input type="number" name="alternate_mobile"><br><br>

            <label for="address">Address: </label>
            <input type="explain" name="address" required><br><br>

            <label for="code">Postal Code: </label>
            <input type="text" name="postal_code" required><br><br>

            <label for="email">Email: </label>
            <input type="email" name="email" required><br><br>

            <label for="contact">Emergency Contact Number: </label>
            <input type="number" name="enumber" required><br><br>

            <label for="myfile">Photo: </label>
            <input type="file" name="photo" required><br><br>

            <label for="occupation">Occupation: </label>
            <input type="text" name="occupation" required><br><br>

            <label for="experience">Experience: </label>
            <input type="text" name="exp"><br><br>

            <label for="date">Date of Birth: </label>
            <input type="date" name="dob" id="dob" required><br><br>

            <label for="age">Age: </label>
            <input type="number" name="age" id="dob" required><br><br>

            <label for="award">Awards: </label><br><br>
            <input type="radio" name="local" id="local" value="local"> Local <br>
            <input type="radio" name="local" id="district" value="district"> District <br>
            <input type="radio" name="local" id="state" value="state"> State <br>
            <input type="radio" name="local" id="nation" value="national"> National <br>
            <input type="radio" name="local" id="internation" value="internation"> International <br>

        
    </div>

    <div id="google_translate_element2" >
        <div>
            
                <h2>Account Details</h2>

                <label for="aadhar">Aadhar Number: </label>
                <input type="number" name="aadhar_number" required><br><br>

                <label for="aadhar-img">Aadhar Card: </label>
                <input type="file" name="photo" required><br><br>

                <label for="pan">Pan Number: </label>
                <input type="number" name="pan_number" required><br><br>

                <label for="aadhar-img">Pan Card: </label>
                <input type="file" name="photo" required><br><br>

                <label for="bank">Name of Bank: </label>
                <input type="text" name="bank_name" required><br><br>

                <label for="account">Account Number: </label>
                <input type="text" name="account_number" required><br><br>

                <label for="holder">Account Holder Name: </label>
                <input type="text" name="account_holder_name" required><br><br>

                <label for="branch">Branch Name: </label>
                <input type="text" name="branch" required><br><br>

                <label for="IFSC">IFSC Number: </label>
                <input type="text" name="ifsc" required><br><br>

                <label for="aadhar-img">Pass Book: </label>
                <input type="file" name="photo" required><br><br>

                <label for="MICR">MICR Number: </label>
                <input type="text" name="micr"><br><br>
                <div id="submit_css">
                   <input type="submit"   name="submit" value="Submit">
                </div> 
            </form>
        </div>
    </div>
    </div>

    

</body>

</html>