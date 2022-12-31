

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register JSP</title>
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    </head>
    <body style="background: url(img/bg3.jpg); background-size: cover; background-attachment: fixed;">
        <div class="container" >
            <div class="row" >
                <div class="col m6 offset-m3">
                    <div class="card">
                        <div class="card-content">
                            <h3 style="margin-top: 10px;" class="center-align">Register Here</h3>
                            <h5 id="msg" class="center-align"> </h5>
                            <div class="form center-align" >

                                <form action="Register" method="post" id="registerForm">
                                    <input type="text" name="user_name" placeholder="Enter your name"/>
                                    <input type="password" name="user_password" placeholder="Enter your password"/>
                                    <input type="email" name="user_email" placeholder="Enter your email"/>
                                    <button type="submit" class="btn grey">
                                        Submit
                                    </button>


                                </form>


                            </div>

                            <div class="loader center-align" style="margin-top: 10px; display: none;">
                                <div class="preloader-wrapper active">
                                    <div class="spinner-layer spinner-red-only">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>
                                </div>
                                <h4> Please Wait...</h4>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <script
            src="https://code.jquery.com/jquery-3.6.3.js"
            integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
        crossorigin="anonymous"></script>
        <script>
            $(document).ready(function () {
                console.log("JQuery is running...");

                //preventing default behaviour on submitting and then serializing and using ajax.
                $("#registerForm").on('submit', function (event) {
                    //Preventing default behaviour.
                    event.preventDefault();

                    //Serializing and then printing all the element of myform.
                    var f = $(this).serialize();
                    console.log(f);

                    $(".form").hide();
                    $(".loader").show();


                    //Using ajax
                    $.ajax({
                        url: "Register",
                        data: f,
                        type: 'POST',
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            console.log("Success....");
                            $(".form").show();
                            $(".loader").hide();
                            if (data.trim() === "Done") {
                                $("#msg").html("Successfully Registered!!");
                                $("#msg").addClass("green-text");
                            } else {
                                $("#msg").html("Something went wrong!!");
                                $("#msg").addClass("red-text");

                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log(data);
                            console.log("Error....");
                            $(".form").show();
                            $(".loader").hide();
                            $("#msg").html("Something went wrong!!");
                            $("#msg").addClass("red-text");

                        }
                    })
                })
            })

        </script>
    </body>
</html>
