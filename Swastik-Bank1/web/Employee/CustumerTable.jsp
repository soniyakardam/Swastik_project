<%-- 
    Document   : CustomerTable
    Created on : 15-Nov-2023, 11:38:53 pm
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>Dashboard - NiceAdmin Bootstrap Template</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Favicons -->
    <link href="assets/img/logo.png" rel="icon" />
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon" />
    
    <!-- Google Fonts -->
    
    <link href="https://fonts.gstatic.com" rel="preconnect" />
    <link
      href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
      rel="stylesheet"
    />

    <!-- Vendor CSS Files -->
    <link
      href="assets/vendor/bootstrap/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
      rel="stylesheet"
    />

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <style>
      .box{
        width: 60rem;
         margin-top: 90px; 
         margin-left:310px; 
         height: 25vh;
      }
      .section{
        margin-top: -20px; 
        width:60rem; 
        margin-left: 20rem;
        /* background-color: #194086; */
      }
      #box1{
      width: 60rem; 
      margin-top: 30px; 
      margin-left:310px;
       height: 25vh;
      }
      #input1{
        margin-top:50px;
      }
      #input2{
        margin-top:30px;
      }
      #headings{
        margin-top:100px;
         margin-left:320px;
      }
      #search{
          background-color: #9F1945;
          color: aliceblue;
      }
        .btn1{
            background-color: #9F1945;
            color: white;
        }
        #tr{
          width:500px;
          margin-top: 40px;
          margin-left: 140px;
        }
        @media only screen and (max-width: 360px) {
          .box{
        width: 60rem;
         margin-top: 90px; 
         margin-left:310px; 
         height: 30vh;
      }
      .section{
        margin-top: -20px; 
        width:6rem; 
        margin-left: 00rem;
        /* background-color:#194086; */

      }
      #search{
          background-color: #9F1945;
          margin-top: 10px;
          margin-left:50px;
          color:white;
      }
      #box1{
      width: 18rem; 
      margin-top: 30px; 
      margin-left:20px;
       height: 35vh;
      }
      #input1{
        margin-top:00px;
        
      }
      #input2{
        margin-top:00px;
          
      }
      
        #btn1{
            background-color: #9F1945;
            color: white;
            margin-top:-200px;
        }
        #headings{
        margin-top:100px;
         margin-left:25px;
         width:300px;
      }
      #tr{
          width:500px;
          margin-top:50px;
          margin-left: -80px;
        }
        }
    </style>
 <script>
    function validate() {
      // Get the input element
      var customerIDInput = document.getElementById('customerid');

      // Get the value entered by the user
      var customerIDValue = customerIDInput.value;

      // Remove leading and trailing whitespaces
      customerIDValue = customerIDValue.trim();

      // Check if the input is empty
      if (customerIDValue === '') {
        alert('Please enter a Customer ID.');
        return false;
      }

      // Check if the input contains only digits
      if (!/^\d+$/.test(customerIDValue)) {
        alert('Customer ID must contain only digits.');
        return false;
      }

      // Check if the input has a maximum length of 10 characters
      if (customerIDValue.length !== 10) {
        alert('Customer ID must be exactly 10 digits long.');
        return false;
      }

      // If all checks pass, the input is valid
      alert('Customer ID is valid: ' + customerIDValue);
      return true;
    }
  </script>
  </head>

  <body>
    <%@include file="head.jsp"%>
              
              
     
    <div id="headings">
      <span>Dashboard / Customer / Customer</span>
    </div>
 
<div class="row border p-4" id="box1" >
  <div class="col-md-5">
      <p class="6">Customer id:</p>
      <input type=""  id="customerid" size="20" name="customerid" maxlength="10"></div>
     
  <div class="col-md-5">
      <p class="6">Account no:</p>
      <input type="" id="input2" size="20" maxlength="10">
      <button id="search" onclick="validate()">Submit</button>
    </div>
      


 <!-- <button  id="search" style="background-color: #194086; margin-top:50px; color:white;  ;width:100px; height: 30px;">Search</button> -->
</div>
    <section class="section">
        <table class="table table-striped table-hover">
          <thead class="bg-light">
            <tr>
                <h4  id="tr"><center><b>Record</b></center></h4>
              <th>Name</th>
              <th>Account no.</th>
              <th>Amount</th>
              <th>Actions</th>
            </tr>
            <tr>
              <td>
                <div class="d-flex align-items-center">
                  <img
                    src="https://mdbootstrap.com/img/new/avatars/8.jpg"
                    alt=""
                    style="width: 45px; height: 45px"
                    class="rounded-circle"
                  />
                  <div class="ms-3">
                    <p class="fw-bold mb-1">name</p>
                    <p class="text-muted mb-0"></p>
                  </div>
                </div>
              </td>
              <td>
                <p class="fw-normal mb-1">*******6475</p>
              </td>

              <td>5000.00</td>
              <td>
                <button type="button" class="btn btn-link btn-sm btn-rounded">
                <a href="Profile3.jsp"><button class="btn1">view</button></a>
                </button>
              </td>
            </tr>

            <tr>
                <td>
                  <div class="d-flex align-items-center">
                    <img
                      src="https://mdbootstrap.com/img/new/avatars/8.jpg"
                      alt=""
                      style="width: 45px; height: 45px"
                      class="rounded-circle"
                    />
                    <div class="ms-3">
                      <p class="fw-bold mb-1">name</p>
                      <p class="text-muted mb-0"></p>
                    </div>
                  </div>
                </td>
                <td>
                  <p class="fw-normal mb-1">*****97377</p>
                </td>
  
                <td>10000.00</td>
                <td>
                  <button type="button" class="btn btn-link btn-sm btn-rounded">
                    <a href="Profile3.jsp"><button class="btn1">view</button></a>
                  </button>
                </td>
              </tr>
          </thead>


        </thead>

        </table>
      </section>
