<?php 
session_start();
// include 'Includes/session.php';
include 'Includes/dbcon.php';

?>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link href="img/settings.png" rel="icon">
  <title>SMARTA</title>
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="css/ruang-admin.min.css" rel="stylesheet">

</head>

<body>
  <!-- Login Content -->
  <div class="container-login rounded">
    <div class="row justify-content-center">
      <div class="col-xl-9 col-lg-12 col-md-8">
        <div class="my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12">
                <div class="login-form">
                <h2 align="center">SMARTA</h2>
                  <div class="text-center">
                    <img src="img/login.png" style="width:80px;height:80px">
                    <br><br>
                    <h3 class="h4 text-gray-900 mb-4">Smart Monitoring and Attendance Recording Tool Application</h3>
                  </div>
                  <form class="user" method="Post" action="">
                  <div class="form-group">
                  <!-- <select required name="userType" class="form-control mb-3"> -->
                          <!-- <option value="">-Select User-</option>
                          <option value="Administrator">Admin</option>
                          <option value="ClassTeacher">Teacher</option> -->
                          <!-- <option value="Parent">Parent</option> -->
                        <!-- </select> -->
                    </div>
                    <div class="form-group">
                      <input type="text" class="form-control" required name="username" id="exampleInputEmail" placeholder="Email Address">
                    </div>
                    <div class="form-group">
                      <input type="password" name = "password" required class="form-control" id="exampleInputPassword" placeholder="Password">
                    </div>
                    <!-- <div class="form-group">
                      <div class="custom-control custom-checkbox small" style="line-height: 1.5rem;">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                      </div>
                    </div> -->
                    <div class="form-group">
                        <input type="submit"  class="btn btn-info btn-block" value="Login" name="login" />
                    </div>
                     </form>
                   <div class="text-center">
                    <a class="font-weight-bold small" href="parentLogin.php">I am a Parent! </a>
                  </div>
                  <div class="text-center">
                </div>

<?php

  if(isset($_POST['login'])){

    // $userType = $_POST['userType'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $password = md5($password);

    // if($userType == "Administrator"){

      $query = "SELECT * FROM tbladmin WHERE emailAddress = '$username' AND password = '$password'";
      $rs = $conn->query($query);
      $num = $rs->num_rows;
      $rows = $rs->fetch_assoc();

      $query1 = "SELECT * FROM tblclassteacher WHERE emailAddress = '$username' AND password = '$password'";
      $rs1 = $conn->query($query1);
      $num1 = $rs1->num_rows;
      $rows1 = $rs1->fetch_assoc();

      if($num > 0){

        $_SESSION['userId'] = $rows['Id'];
        $_SESSION['firstName'] = $rows['firstName'];
        $_SESSION['lastName'] = $rows['lastName'];
        $_SESSION['emailAddress'] = $rows['emailAddress'];

        echo "<script type = \"text/javascript\">
        window.location = (\"Admin/index.php\")
        </script>";
      }
      else if($num1 > 0){

        $_SESSION['userId'] = $rows1['Id'];
        $_SESSION['firstName'] = $rows1['firstName'];
        $_SESSION['lastName'] = $rows1['lastName'];
        $_SESSION['emailAddress'] = $rows1['emailAddress'];
        $_SESSION['classId'] = $rows1['classId'];
        $_SESSION['classArmId'] = $rows1['classArmId'];

        echo "<script type = \"text/javascript\">
        window.location = (\"ClassTeacher/index.php\")
        </script>";

      }
      else{

        echo "<div class='alert alert-danger' role='alert'>
        Invalid Username/Password!
        </div>";

      }
    }
    // else {

    //   $query = "SELECT * FROM tblclassteacher WHERE emailAddress = '$username' AND password = '$password'";
    //   $rs = $conn->query($query);
    //   $num = $rs->num_rows;
    //   $rows = $rs->fetch_assoc();

    //   if($num > 0){

    //     $_SESSION['userId'] = $rows['Id'];
    //     $_SESSION['firstName'] = $rows['firstName'];
    //     $_SESSION['lastName'] = $rows['lastName'];
    //     $_SESSION['emailAddress'] = $rows['emailAddress'];
    //     $_SESSION['classId'] = $rows['classId'];
    //     $_SESSION['classArmId'] = $rows['classArmId'];

    //     echo "<script type = \"text/javascript\">
    //     window.location = (\"ClassTeacher/index.php\")
    //     </script>";
    //   }

    //   else{

    //     echo "<div class='alert alert-danger' role='alert'>
    //     Invalid Username/Password!
    //     </div>";

    //   }
    // }
// }
?>
                
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
  <!-- Login Content -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="js/ruang-admin.min.js"></script>
</body>

</html>