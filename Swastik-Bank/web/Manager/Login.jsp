<%-- 
    Document   : Login
    Created on : 30-Nov-2023, 4:46:25 pm
    Author     : abc
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="java.io.IOException" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Transparent Login Form HTML CSS</title>
        <link rel="stylesheet" href="css/Login.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
            />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                /* font-family: "Poppins", sans-serif; */
            }
            body {
                min-height: 100vh;
                align-items: center;
                justify-content: center;
                /* padding: 20px; */
                /* background: rgb(130, 106, 251); */
            }
            #footer{
                width: 100%;
                margin-top: 20px;
                text-align: center;
                background: #f9f9f9;
            }
            #footer h1{
                font-weight: 600;
                padding-top: 10px;
                color: steelblue;
            }

            #footer h1 span{
                color: black;
            }
            .social-link i{
                padding: 10px;
                border-radius: 5px;
                font-size: 20px;
                background: black;
                color: #f9f9f9;
                margin-left: 10px;
                margin-bottom: 10px;
                transition: 0.5s ease;
                cursor: pointer;
            }
            .social-link i:hover{
                background:#ffa500;
            }
            .bg-img{
                background: url('https://img.etimg.com/thumb/msid-68748254,width-300,height-225,imgsize-675057,,resizemode-75/bank-1.jpg');
                height: 100vh;
                background-size: cover;
                background-position: center;
            }
            .bg-img:after{
                /*margin-top: 140px;*/
                position: absolute;
                content: '';
                top: 0;
                left: 0;
                height: 100%;
                width: 100%;
                background: rgba(0,0,0,0.7);
            }
            .content{
                position: absolute;
                top: 50%;
                left: 50%;
                z-index: 999;
                border: 2px solid gray;
                text-align: center;
                padding: 60px 32px;
                width: 370px;
                transform: translate(-50%,-50%);
                /*                 background: rgba(255,255,255,0.04); 
                                 box-shadow: -1px 4px 28px 0px rgba(0,0,0,0.75); */
            }
            .content header{
                color: white;
                font-size: 33px;
                font-weight: 600;
                margin: 0 0 35px 0;
                font-family: 'Montserrat',sans-serif;
            }
            .field{
                position: relative;
                height: 45px;
                width: 100%;
                display: flex;
                background: rgba(255,255,255,0.94);
            }
            .field span{
                color: #222;
                width: 40px;
                line-height: 45px;
            }
            .field input{
                height: 100%;
                width: 100%;
                background: transparent;
                border: none;
                outline: none;
                color: #222;
                font-size: 16px;
                font-family: 'Poppins',sans-serif;
            }
            .space{
                margin-top: 16px;
            }
            .show{
                position: absolute;
                right: 13px;
                font-size: 13px;
                font-weight: 700;
                color: #222;
                display: none;
                cursor: pointer;
                font-family: 'Montserrat',sans-serif;
            }
            .pass-key:valid ~ .show{
                display: block;
            }
            .pass{
                text-align: left;
                margin: 10px 0;
            }
            .pass a{
                color: white;
                text-decoration: none;
                font-family: 'Poppins',sans-serif;
            }
            .pass:hover a{
                text-decoration: underline;
            }

            .field input[type="submit"]{
                background: #3498db;
                border: 1px solid #2691d9;
                color: white;
                font-size: 18px;
                letter-spacing: 1px;
                font-weight: 600;
                cursor: pointer;
                font-family: 'Montserrat',sans-serif;
            }
            .field input[type="submit"]:hover{
                background: #2691d9;
            }

            .links i{
                font-size: 17px;
            }
            i span{
                margin-left: 8px;
                font-weight: 500;
                letter-spacing: 1px;
                font-size: 16px;
                font-family: 'Poppins',sans-serif;
            }
            .signup{
                margin-top: 20px;
                font-size: 15px;
                color: white;
                font-family: 'Poppins',sans-serif;
            }
            .signup a{
                color: #3498db;
                text-decoration: none;
            }
            .signup a:hover{
                text-decoration: underline;
            }
            .p{
                font-size: 20px;
                font-weight: bold;
                color: white;
            }
        </style>
        <script>
            function validate()
            {
                var txt = document.getElementById("em");
                var displays = document.getElementById("display");
                        if (txt.value.trim() = "")
                {
                display.innerHTML = "field Required";
                        display.style.color = "red";
                        return false;
                }
                else{
                var reg = /\d/;
                if (reg.text(txt.value)) {
                    display.innerHTML = "valid";
                    display.style.color = "Green";
                    return false;
                } else {
                    display.innerHTML = "Invalid";
                    display.style.color = "purple";
                    return false;
                }
                }
            }

        </script>
    </head>
    <body>

        <div class="bg-img">
            <div class="content">
                <header>Login Form</header>
                <form action="ManagerLoginContoller">
                    <div class="field">
                        <span class="fa fa-user"></span>
                        <input onkeyup="validate()" type="text" id="em"  required placeholder="Email or Phone" name="email">
                        <span id="display"></span>
                    </div>
                    <div class="field space">
                        <span class="fa fa-lock"></span>
                        <input type="password" class="pass-key" required placeholder="Password" name="pass" >
                        <!--<span class="show">SHOW</span>-->
                    </div>
                    <div class="pass">
                        <a href="#">Forgot Password?</a>
                    </div>
                    <div class="field">
                        <input type="submit" onclick="validate()" value="LOGIN">
                    </div>


                </form>

                <div class="signup">
                    Don't have account?
                    <a href="Registration.jsp">Signup Now</a>
                </div>
            </div>
        </div>

    </div>
    <footer id="footer">
        <h1><span>OutDoor</span>Adventure</h1>
        <p class="w-50 m-auto">
            Lorem ipsum dolor sit amet consectetur, adipisicing elit. Consequatur
            provident, mollitia sequi labore voluptate sit voluptatibus nam esse
            laboriosam aliquid culpa? Cupiditate ipsa numquam totam pariatur ab
            itaque iusto suscipit?
        </p>
        <div class="social-link">
            <i class="fa-brands fa-twitter"></i>
            <i class="fa-brands fa-facebook"></i>
            <i class="fa-brands fa-instagram"></i>
            <i class="fa-brands fa-youtube"></i>
            <i class="fa-brands fa-pinterest-p"></i>
        </div>
        <div class="credit">
            <p>Designed By <a href="a">Tech Nerds</a></p>
        </div>
        <div class="copyright">
            <p>&copy;Copyright.All Rights Reserved</p>
        </div>
    </footer>
</body>
</html>
