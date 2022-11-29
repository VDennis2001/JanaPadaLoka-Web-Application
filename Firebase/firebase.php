<!DOCTYPE html>
<html>
  <head>
    <title>Firebase Phone Verification</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link href="main.css" rel="stylesheet">

  </head>
  <body>
    <form action="verification.php">
      <h1>Firebase Phone verification In PHP</h1>
      <div class="formcontainer">
      <hr/>
      <div class="container">
        <label for="uname"><strong>Phone Number</strong></label>
        <input type="text" id="number" placeholder="Enter phone number" name="uname" required>
      </div>
      <div id="recaptcha-container"></div>
      <button type="button" onclick="phoneAuth();">Send Otp</button>
    
    </form>

    <form action="verification.php">
      <!-- <h1>Firebase Phone verification In PHP</h1> -->
      <div class="formcontainer">
      <hr/>
      <div class="container">
        <label for="uname"><strong>Verification Number</strong></label>
        <input type="text" id="verifyNumber" placeholder="Enter verification code" name="uname" required>
      </div>
      <!-- <div id="recaptcha-container"></div> -->
      <button type="button" onclick="codeverify();">Submit</button>
    
    </form>


  <script src="https://www.gstatic.com/firebasejs/8.3.1/firebase.js"></script>
    <script>
    // Your web app's Firebase configuration
    var firebaseConfig = {
    apiKey: "AIzaSyCenNYz0t1Re71YZTn2UQjNgFH0KXuBhi0",
    authDomain: "museum-63148.firebaseapp.com",
    projectId: "museum-63148",
    storageBucket: "museum-63148.appspot.com",
    messagingSenderId: "47331439042",
    appId: "1:47331439042:web:870557b85ef622d640e65b",
    measurementId: "G-V410SQ1L2Y"
    };

    // Initialize Firebase
    firebase.initializeApp(firebaseConfig);
     firebase.analytics();
</script>
<!-- 
<script type="module">
  // Import the functions you need from the SDKs you need
  import { initializeApp } from "https://www.gstatic.com/firebasejs/9.13.0/firebase-app.js";
  import { getAnalytics } from "https://www.gstatic.com/firebasejs/9.13.0/firebase-analytics.js";
  // TODO: Add SDKs for Firebase products that you want to use
  // https://firebase.google.com/docs/web/setup#available-libraries

  // Your web app's Firebase configuration
  // For Firebase JS SDK v7.20.0 and later, measurementId is optional
  const firebaseConfig = {
    apiKey: "AIzaSyCenNYz0t1Re71YZTn2UQjNgFH0KXuBhi0",
    authDomain: "museum-63148.firebaseapp.com",
    projectId: "museum-63148",
    storageBucket: "museum-63148.appspot.com",
    messagingSenderId: "47331439042",
    appId: "1:47331439042:web:870557b85ef622d640e65b",
    measurementId: "G-V410SQ1L2Y"
  };

  // Initialize Firebase
  const app = initializeApp(firebaseConfig);
  const analytics = getAnalytics(app);
</script> -->

    <script src="firebase.js" type="text/javascript"></script>
  </body>
</html>
