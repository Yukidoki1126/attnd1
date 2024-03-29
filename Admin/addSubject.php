<?php
error_reporting(0);
include '../Includes/dbcon.php';
include '../Includes/session.php';


date_default_timezone_set('Asia/Manila');
if (isset($_POST['save'])) {

  $Id = $_POST['Id'];
  $subcode = $_POST['subcode'];
  $subname = $_POST['subname'];
  $timestr = $_POST['timestr'];
  $timend = $_POST['timend'];

  $query = mysqli_query($conn, "select * from tblsubject where subcode ='$subcode' and subname ='$subname' and timestr = '$timestr' and timend='$timend' and Id = 'Id'");
  $ret = mysqli_fetch_array($query);

  if ($ret > 0) {

    $statusMsg = "<div class='alert alert-danger' style='margin-right:700px;'>Already Exists!<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>";
  } else {

    $query = mysqli_query($conn, "insert into tblsubject(subcode,subname,timestr,timend) value('$subcode','$subname','$timestr', '$timend')");

    $statusMsg = ($query) ? "<div class='alert alert-success'  style='margin-right:700px;'>Created Successfully!<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>" : "<div class='alert alert-danger' style='margin-right:700px;'>An error Occurred!</div>";
  }
}

//---------------------------------------EDIT-------------------------------------------------------------


if (isset($_GET['Id']) && isset($_GET['action']) && $_GET['action'] == "edit") {
  $Id = $_GET['Id'];

  $query = mysqli_query($conn, "select * from tblsubject where Id ='$id'");
  $row = mysqli_fetch_array($query);

  //------------UPDATE-----------------------------

  if (isset($_POST['update'])) {

    $Id = $_POST['Id'];
    $subcode = $_POST['subcode'];
    $subname = $_POST['subname'];
    $timestr = $_POST['timestr'];
    $timend = $_POST['timend'];

    $query = mysqli_query($conn, "select * from tblsubject where subcode ='$subcode' or subname ='$subname'");
    $ret = mysqli_fetch_array($query);

    if ($ret > 0) {
      $statusMsg = "<div class='alert alert-danger' style='margin-right:700px;'>Already Exists!<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>";


    } else {
      $query = mysqli_query($conn, "update tblsubject set Id = '$Id', subcode='$subcode', subname='$subname', timestr='$timestr', timend='$timend' where id='$Id'");

      echo "<script type = \"text/javascript\">
              window.location = (\"addSubject.php\")
              </script>";
    }
  }
}

//--------------------------------DELETE------------------------------------------------------------------

if (isset($_GET['Id']) && isset($_GET['action']) && $_GET['action'] == "delete") {
  $Id = $_GET['Id'];

  $query = mysqli_query($conn, "DELETE FROM tblsubject WHERE Id='$Id'");

  if ($query == TRUE) {

    echo "<script type = \"text/javascript\">
                window.location = (\"addSubject.php\")
                </script>";
  } else {

    $statusMsg = "<div class='alert alert-danger' style='margin-right:700px;'>An error Occurred!</div>";
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
  <link href="img/settings.png" rel="icon">
  <?php include 'includes/title.php'; ?>
  <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <script src="https://kit.fontawesome.com/44fa69dea4.js" crossorigin="anonymous"></script>
  <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="css/ruang-admin.min.css" rel="stylesheet">
</head>

<body id="page-top">
  <div id="wrapper">
    <!-- Sidebar -->
    <?php include "Includes/sidebar.php"; ?>
    <!-- Sidebar -->
    <div id="content-wrapper" class="d-flex flex-column">
      <div id="content">
        <!-- TopBar -->
        <?php include "Includes/topbar.php"; ?>
        <!-- Topbar -->

        <!-- Container Fluid-->
        <div class="container-fluid" id="container-wrapper">
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Subject</h1>
            <!-- <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="./">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Create Class Arms</li>
            </ol> -->
          </div>

          <div class="row">
            <div class="col-lg-12">
              <!-- Form Basic -->
              <?php echo $statusMsg; ?>
              <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-secondary">Add Subject</h6>

                </div>
                <div class="card-body">
                  <form method="post">
                    <div class="form-group row mb-3">
                      <div class="col-xl-2">
                        <label class="form-control-label">Subject Code<span class="text-danger ml-2">*</span></label>
                        <input type="text" class="form-control" name="subcode"
                          value="<?php echo $row['subcode']; ?>" id="subcode" placeholder="Subject Code" required>
                      </div>
                      <div class="col-xl-6">
                        <label class="form-control-label">Subject Name<span class="text-danger ml-2">*</span></label>
                        <input type="text" class="form-control" name="subname"
                          value="<?php echo $row['subname']; ?>" id="subname" placeholder="Subject Name" required>
                      </div>
                    </div>

                    <div class="form-group row mb-3">
                      <div class="col-xl-2">
                        <label class="form-control-label">Subject Schedule<span class="text-danger ml-2">*</span></label>
                      <select name="timestr" class="form-control mb-3" required>
                        <option value="">Time Start</option>
                        <?php echo get_times(); ?>
                      </select>
                      </div>

                      <div class="col-xl-2">
                        <label class="form-control-label"><span class="text-danger ml-2"></span></label>
                        <select name="timend" class="form-control mb-3" required>
                        <option value="">Time End</option>
                        <?php echo get_times(); ?>
                      </select>
                      </div>
                      
                    </div>
                    <?php
                    if (isset($Id)) {
                      ?>
                      <button type="submit" name="update" class="btn btn-info">Update</button>
                      <a href="createClassArms.php" id="cancel" name="cancel" class="btn btn-warning">Back</a>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <?php
                    } else {
                      ?>
                      <button type="submit" name="save" class="btn btn-primary">Save</button>
                      <?php
                    }
                    ?>
                  </form>
                </div>
              </div>

              <!-- Input Group -->
              <div class="row">
                <div class="col-lg-12">
                  <div class="card mb-4">
                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                      <h6 class="m-0 font-weight-bold text-secondary">List</h6>
                    </div>
                    <div class="table-responsive p-3">
                      <table class="table align-items-center table-flush table-hover" id="dataTableHover">
                        <thead class="thead-dark">
                          <tr>
                            <th>#</th>
                            <th>Subject Code</th>
                            <th>Subject Name</th>
                            <th>Schedule</th>
                            <th>Action</th>
                          </tr>
                        </thead>

                        <tbody>

                        <?php
                          $query = "SELECT * FROM tblsubject";
                          $rs = $conn->query($query);
                          $num = $rs->num_rows;
                          $sn = 0;
                          if ($num > 0) {
                            while ($rows = $rs->fetch_assoc()) {
                              $sn = $sn + 1;
                              echo "
                              <tr>
                                <td>" . $sn . "</td>
                                <td>" . $rows['subcode'] . "</td>
                                <td>" . $rows['subname'] . "</td>
                                <td>" . $rows['timestr'] .' - '. $rows['timend'] ."</td>
                                <td><a href='?action=edit&Id=" . $rows['Id'] . "'>Edit</a>  &nbsp; &nbsp; &nbsp; &nbsp;
                                <a onclick='javascript:confirmationDelete($(this));return false;' href='?action=delete&Id=" . $rows['Id'] . "'>Delete</a>
                                </td>
                              </tr>";
                            }
                          } else {
                            echo
                              "<div class='alert alert-danger' role='alert'>
                            No Record Found!
                            </div>";
                          }

                          ?>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!--Row-->

            <!-- Documentation Link -->
            <!-- <div class="row">
            <div class="col-lg-12 text-center">
              <p>For more documentations you can visit<a href="https://getbootstrap.com/docs/4.3/components/forms/"
                  target="_blank">
                  bootstrap forms documentations.</a> and <a
                  href="https://getbootstrap.com/docs/4.3/components/input-group/" target="_blank">bootstrap input
                  groups documentations</a></p>
            </div>
          </div> -->

          </div>
          <!---Container Fluid-->
        </div>
      </div>
    </div>
    <?php
    function get_times ($interval = '+30 minutes') {

    $output = '';

    $current = strtotime('07:00');
    $end = strtotime('19:00');

    while ($current <= $end) {
        $time = date('h:i A', $current);
        $sel = ($time);

        $output .= "<option value=\"{$time}\"{$sel}>" . date('h:i A', $current) .'</option>';
        $current = strtotime($interval, $current);
    }

    return $output;
 }
 ?>

    <script type="text/javascript">
      function confirmationDelete(anchor) {
        var conf = confirm('Are you sure want to delete this record?');
        if (conf)
          window.location = anchor.attr("href");
      }
    </script>

    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="js/ruang-admin.min.js"></script>
    <!-- Page level plugins -->
    <script src="../vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="../vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script>
      $(document).ready(function () {
        $('#dataTable').DataTable(); // ID From dataTable 
        $('#dataTableHover').DataTable(); // ID From dataTable with Hover
      });
    </script>
</body>

</html>