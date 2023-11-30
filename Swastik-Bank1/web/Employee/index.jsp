<%-- 
    Document   : index
<<<<<<< HEAD:Swastik-Bank/web/Employee/index.jsp
    Created on : 15-Nov-2023, 11:19:20 pm
    Author     : Hp
=======
    Created on : 28-Nov-2023, 4:50:29 pm
    Author     : Sohan_Maali
>>>>>>> 28f20cb16c9fe53405f102aeabed87b260f6cd7e:Swastik-Bank/build/web/index.jsp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<<<<<<< HEAD:Swastik-Bank/web/Employee/index.jsp
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
      integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css"
    />
    <link rel="stylesheet" href="style.css"/>

    <title>Swastik Bank</title>

    <style>
      /* Your CSS styles here */
      .login-page {
          width: 360px;
          padding: 8% 0 0;
          margin: auto;
      }
      /* body{
          background-color:lightcyan;
      } */
      body {
    margin: 0;
    padding: 0;
    background: url('https://www.shutterstock.com/image-photo/businessman-typing-on-laptop-computer-260nw-1897596700.jpg') no-repeat center center/cover;
    /* The shorthand property sets the background image, centers it horizontally and vertically,
    and ensures it covers the entire container */
    height: 100vh; /* Sets the background to cover the full height of the viewport */
    color: white;
    font-family: Arial, sans-serif;
}

/* Additional styles for content */
.content {
    text-align: center;
    padding: 100px;
    font-size: 24px;
}
      .form {
          position: relative;
          z-index: 1;
          background: #9F1945;
          max-width: 500px;
          border-radius:20px;
          max-height: 360px;
          width:400px;
          margin-top: 70px;
          margin-left: 00px;
          height:400px;
/*                margin: 0 auto 100px;*/
          padding: 45px;
          text-align: cent;
          box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24); /* Fixed the box-shadow */
      }
      .form input {
          font-family: 'Roboto', sans-serif;
          outline: 0;
          background: #f2f2f2;
          width: 100%;
          border: 0;
          /* margin: 0 0 15px; */
          margin-top: 13px;
          padding: 15px;
          box-sizing: border-box;
          font-size: 14px;
             border-radius: 30px;
      }
      .form button {
          font-family: 'Roboto', sans-serif;
          text-transform: uppercase;
          outline: 0;
          background:lightpink;
          width: 100%;
          border: 0;
          border-radius: 30px;
          padding: 15px;
          color: black;
          font-size: 14px;
          -webkit-transition: all 0.2 ease;
          transition: all 0.2 ease;
          cursor: pointer;
          margin-top: 13px;
      }
      .form button:hover,.form button:active,.form button:focus {
          background:black;
          color:white;
      }
      .form .message {
          margin: 15px 0 0;
          color: white;
          font-size: 16px;
      }
      .form .message a {
          color: yellow;
          text-decoration: none;
      }
      .form .register-form {
          display: none;
      }
      .container {
          position: relative;
          z-index: 1;
          max-width: 300px;
          margin: 0 auto;
      }
      .container:before, .container:after {
          /* content: */
           display: block;
          clear: both;
      }
      .container .info {
          margin: 50px auto;
          text-align: center;
      }
      .container .info h1 {
          margin: 0 0 15px;
          padding: 0;
          font-size: 36px;
          font-weight: 300;
          color: #1a1a1a;
      }
      .container .info span {
          color: #4d4d4d;
          font-size: 12px;
      }
      .container .info span a {
          color: #000000;
          text-decoration: none;
      }
      .container .info span .fa {
          color: #EF3B3A;
      }
  </style>
 <script>
  function validateform(){
      var email = document.Myform.email.value;
      var password = document.Myform.password.value;
      if(email==""|| password==""){
        alert("All Fields is Mandatory");
        return false;
      }
      else{
       return true;
      }
  }
 </script>
  </head>
  <body>
    <div class="shadow bg-white rounded fixed-top">
      <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
          <a class="navbar-brand " href="Home.html"
            ><img src="assets/img/Logo_New-3.png" height="40px" width="140px" alt=""
          /></a>
          <button
            class="navbar-toggler bg-light"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-auto">
              <li class="nav-item ms-4">
                <a class="nav-link active text-white" id="top-nav" href="index.html"
                  >Home</a
                >
              </li>
              <li class="nav-item ms-4">
                <a class="nav-link active text-white " id="top-nav" href="About.html"
                  >About Us</a
                >
              </li>
              <li class="nav-item ms-4">
                <a class="nav-link active text-white" id="top-nav" href="Accountd.html"
                  >Account</a
                >
              </li>
              <li class="nav-item ms-4">
                <a class="nav-link active text-white" id="top-nav" href="Loan.html"
                  >Loans</a
                >
              </li>
              <li class="nav-item ms-4">
                <a class="nav-link active text-white "   id="top-nav" href="Cards.html"
                  >Cards</a
                >
              </li>
              <li class="nav-item ms-4">
                <a class="nav-link active text-white " id="top-nav" href="Offers.html"
                  >Offers</a
                >
              </li>
              <li class="nav-item dropdown ml-5 text-white">
                <a
                  class="nav-link dropdown-toggle ms-5 text-white"
                  style="font-size: 20px"
                  href="#"
                  id="navbarDropdown"
                  role="button"
                  data-bs-toggle="dropdown"
                  aria-expanded="false"
                >
                  Login
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li>
                    <a class="dropdown-item" href="Login
                    .html">Customer</a>
                  </li>
                  <li><a class="dropdown-item" href="#">Employee</a></li>
                  <li><a class="dropdown-item" href="#">Admin</a></li>
                  <!-- <li><hr class="dropdown-divider"></li> -->
                  <!-- <li><a class="dropdown-item" href="#">Something else here</a></li> -->
                </ul>
              </li>
            </ul>
           
          </div>
        </div>
      </nav>
    </div>



    <div class='login-page'>
      <div class='form'>
          <form class='register-form's>
              <input type='text' placeholder='name'/>
              <input type='password' placeholder='password'/>
              <input type='text' placeholder='email address'/>
              <button>create</button>
              <p class='message'>Already registered? <a href='#'>Sign In</a></p>
          </form>
          <form class='login-form'name="Myform" method="post" action="" onsubmit="return validateform">
              <h3><center>Login</center></h3>
              <input type='text' id='n1' name='email' placeholder='Email'/>
              <input type='password' id='n2' name="password"  placeholder='password'/>
              <button type="submit">login</button>
              <!-- <p class='message'>Not registered? <a href='Registration2.jsp'>Create an account</a></p> -->
          </form>
      </div>
  </div>


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    // <!-- src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    // integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    // crossorigin="anonymous" -->

    // function validate(){
    //   var a=document.getElementbyId("n1").value;
    //   var b=document.getElementbyId("n2").value;
    //       if(a=="" || b=="")
    //       {
    //         alert("All Fields is Mondatory");
    //         return false;
    //       }
    //       else{
    //         true;
    //       }
    // }
    </script>

</body>
</html>
