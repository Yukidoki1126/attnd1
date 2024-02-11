<?php
error_reporting(0);
session_start();
include 'Includes/dbcon.php';

if (isset($_POST['register'])) {

    $fname = $_POST['fname'];
    $sname = $_POST['sname'];

    $stdlrn = $_POST['stdlrn'];
    $stdfname = $_POST['stdfname'];
    $stdsname = $_POST['stdsname'];

    $emailadd = $_POST['emailadd'];
    $password = $_POST['password'];
    $conpassword = $_POST['conpassword'];

    $query1 = mysqli_query($conn, "select * from tblparent where stdlrn = '$stdlrn'");
    $ret2 = mysqli_fetch_array($query1);

    $query = mysqli_query($conn, "select * from tblparent where emailadd ='$emailadd'");
    $ret = mysqli_fetch_array($query);  

    $query2 = mysqli_query($conn,"select * from tblstudents where admissionNumber ='$stdlrn'");
    $ret3 = mysqli_num_rows($query2);

    $password_1 = md5($password);
    $password_2 = md5($conpassword);

    if ($ret > 0) {

        $statusMsg = "<div class='alert alert-danger'> Email Address Already Exists!<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>";
    } else if ($password_1 != $password_2) {

        $statusMsg = "<div class='alert alert-danger'> Passwords do not match!<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>";
    } else if ($ret2 > 0) {
        $statusMsg = "<div class='alert alert-danger'> This LRN is already registered! Try again. <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>";
    } else if ($ret3 == 0) {
        $statusMsg = "<div class='alert alert-danger'> This LRN does not exist! Please enter a valid LRN. <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>";
    
    // else if (mysqli_num_rows($query2)) {
    //     $statusMsg = "<div class='alert alert-danger'> This LRN exists! <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>";
    }else {
        $query = mysqli_query($conn, "INSERT into tblparent(fname,sname,stdlrn,stdfname,stdsname,emailadd,password,conpassword) 
      value('$fname','$sname','$stdlrn','$stdfname','$stdsname', '$emailadd','$password_1','$password_2')");

        $statusMsg = ($query) ? "<div class='alert alert-primary'>Registered Successfully! Return to <a style='color:#fff;' href='parentLogin.php'> Parent Login Page. </a> </div>" : "<div class='alert alert-danger' style='margin-right:700px;'>An error Occurred!</div>";
    }
}

?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="img/logo/logo.png" rel="icon">
    <title>Register</title>
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="css/ruang-admin.min.css" rel="stylesheet">
    <link href="css/styler.css" rel="stylesheet">

</head>

<body class="bg-gradient-login">
    <!-- Register Content -->
   
    <div class="container-login">
        <div class="row justify-content-center">
            <div class="col-xl-10 col-lg-12 col-md-9">
                <div class="card shadow-sm my-5">
                    <div class="card-body p-0">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="login-form">
                                    <div class="text-center">
                                        <?php echo $statusMsg; ?>
                                        <h1 class="h4 text-gray-900 mb-4">Parent Registration</h1>
                                    </div>
                                    <hr>
                                    <form class="user" method="Post" action="">
                                        <div class="form-group">
                                            <label>First Name</label>
                                            <input required type="text" class="form-control" id="fname" name="fname"
                                                placeholder="Enter First Name">
                                        </div>
                                        <div class="form-group">
                                            <label>Surname</label>
                                            <input type="text" class="form-control" id="sname" name="sname" required
                                                placeholder="Enter Surname">
                                        </div>
                                        <br>
                                        <hr><br>
                                        <div class="form-group">
                                            <label>Student's LRN</label>
                                            <input type="number" class="form-control" id="stdlrn" name="stdlrn" required
                                                placeholder="Enter LRN">
                                        </div>
                                        <div class="form-group">
                                            <label>Student's First Name</label>
                                            <input type="text" class="form-control" id="stdfname" name="stdfname"
                                                required placeholder="Enter First Name">
                                        </div>
                                        <div class="form-group">
                                            <label>Student's Surname</label>
                                            <input type="text" class="form-control" id="stdsname" name="stdsname"
                                                required placeholder="Enter Surname">
                                        </div>
                                        <br>
                                        <hr><br>
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input type="email" class="form-control" id="emailadd"
                                                aria-describedby="emailHelp" name="emailadd" required
                                                placeholder="Enter Email Address">
                                        </div>
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input type="password" class="form-control" id="password" name="password"
                                                required onkeyup="check();" placeholder="Password">
                                        </div>
                                        <div class="form-group">
                                            <label>Repeat Password</label>
                                            <input type="password" class="form-control" id="conpassword"
                                                name="conpassword" required placeholder="Repeat Password"
                                                onkeyup="check();">
                                            <span id="message"></span>
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-info btn-block" value="Register"
                                                name="register">Register</button>
                                        </div>
                                    </form>
                                    <div class="text-center">
                                        <a class="font-weight-bold small" href="parentLogin.php">Already have an
                                            account?</a>
                                    </div>
                                    <div class="text-center">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        var check = function () {
            if (document.getElementById("password").value ==
                document.getElementById("conpassword").value) {
                document.getElementById("message").style.color = "blue";
                document.getElementById("message").innerHTML = "Passwords Matched!";
            } else {
                document.getElementById("message").style.color = "red";
                document.getElementById("message").innerHTML = "Passwords do not match!";
            }
        }
    </script>
    <!-- Register Content -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="js/ruang-admin.min.js"></script>
</body>

</html>