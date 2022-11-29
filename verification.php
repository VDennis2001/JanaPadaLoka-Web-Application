<!DOCTYPE html>
<html>
  <head>
    <title>Firebase Phone Verification</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link href="main.css" rel="stylesheet">

  </head>
  <body>
    <form >
      <h1>Firebase Phone verification In PHP</h1>
      <div class="formcontainer">
      <hr/>
      <div class="container">
      <input type="text" id="verificationCode" placeholder="Enter verification code">
      
      </div>
     
      <button type="button" onclick="codeverify();">Verify code</button>
    
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
    
  </body>
</html>