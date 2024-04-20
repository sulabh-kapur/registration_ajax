<!DOCTYPE html>
<html lang="en">

<head>
  <title>Registartion Form</title>
  <link rel="stylesheet" href="./assets/vendor/bootstrap/css/bootstrap.css">
  <style>
    .error,
    .success {
      display: none;
    }
  </style>
</head>

<body>
  <div class="alert alert-success success"></div>

  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <h2>Register form</h2>
        <form action='POST' id="registrationform">
          <div class="form-group">
            <label for="f_name">First Name</label>
            <input type="text" class="form-control f_name" id="f_name" placeholder="Enter name" name="f_name">
          </div>
          <div class="alert alert-danger error error-f_name">
          </div>
          <div class="form-group">
            <label for="l_name">Last Name</label>
            <input type="text" class="form-control  l_name" id="l_name" placeholder="Enter name" name="l_name">
          </div>
          <div class="alert alert-danger error error-l_name">
          </div>
          <div class="form-group">
            <label for="email">Email</label>
            <input type="text" class="form-control email" id="email" placeholder="Enter email" name="email">
          </div>
          <div class="alert alert-danger error error-email">
          </div>
          <div class="form-group">
            <label for="pwd">Password:</label>
            <input type="password" class="form-control pwd" id="pwd" placeholder="Enter password" name="pwd">
          </div>
          <div class="alert alert-danger error error-pwd">
          </div>
          <div class="form-group">
            <label for="postal">Postal Code</labe l>
              <input type="text" class="form-control postal" id="postal" placeholder="Enter Postal Code" name="postal">
          </div>
          <div class="alert alert-danger error error-postal">
          </div>
          <div class="form-group">
            <label for="address">Address</label>
            <input type="text" class="form-control address" id="address" placeholder="Enter Address" name="address">
          </div>
          <div class="alert alert-danger error error-address">
          </div>
          <div class="checkbox">
            <label><input type="checkbox" name="remember"> Remember me</label>
          </div>
          <button type="submit" class="btn btn-default">Submit</button>
        </form>
      </div>


      <h2>Table</h2>
      <div class="col-md-6">

        <table class="table">
          <thead>
            <tr>
              <th>Firstname</th>
              <th>Lastname</th>
              <th>Email</th>
              <th>Postal Code</th>
              <th>Address</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody id="tableRecord">

          </tbody>
        </table>
      </div>
    </div>
  </div>




  <script src="./assets/js/jquery.js"></script>
  <script src="./assets/vendor/bootstrap/js/bootstrap.min.js"></script>
  <script src="./assets/js/custom.js"></script>

   <!-- Modal -->
   <div class="modal fade" id="myViewModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Update</h4>
        </div>
        <div class="modal-body">
        <form action='POST' id="register">
          <div class="form-group">
            <label for="f_name">First Name</label>
            <input type="text" class="form-control first_name" id="first_name"  name="first_name">
          </div>
          <div class="form-group">
            <label for="l_name">Last Name</label>
            <input type="text" class="form-control  last_name" id="last_name" name="last_name">
          </div>
          <div class="form-group">
            <label for="email">Email</label>
            <input type="text" class="form-control Email" id="Email"  name="Email">
          </div>
          
          <div class="form-group">
            <label for="pwd">Password:</label>
            <input type="password" class="form-control password" id="password"  name="password">
          </div>
          
          <div class="form-group">
            <label for="postal">Postal Code</labe l>
              <input type="text" class="form-control Postal" id="Postal"  name="Postal">
          </div>
          
          <div class="form-group">
            <label for="address">Address</label>
            <input type="text" class="form-control Address" id="Address" name="Address">
          </div>
         
          <div class="checkbox">
            <label><input type="checkbox" name="remember"> Remember me</label>
          </div>
          <button type="submit" class="btn btn-default">Submit</button>
        </form>
         
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
</body>

</html>