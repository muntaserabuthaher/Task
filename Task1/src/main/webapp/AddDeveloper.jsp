
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/select.css" rel="stylesheet">

<%@include file ='Nav.jsp' %>




<div class="container">
<div class="panel panel-primary">
  <div class="panel-heading">
    <h3 class="panel-title"> Add User   </h3>
  </div>
  
  
  <div class="panel-body">

 <form action="addDeveloperDone.jsp" method="post">
  
  Name:<br>
  <input type="text" name="name"  class="form-control"><br>
  
  Email:<br>
  <input type="email" name="email"  class="form-control"><br> 
  
  Password:<br>
  <input type="password" name="password"  class="form-control"><br> 
  
  Gender:<br>
<input type="radio" name="gender" value="male"> Male
<input type="radio" name="gender" value="female"> Female
 <br> <br>
  
  location:<br>
  <select name="location" class="selectX">
  <option value="Qalqilya">Qalqilya</option>
  <option value="Nablus">Nablus</option>
  <option value="Ramallah">Ramallah</option>
  <option value="Tulkarm">Tulkarm</option>
  <option value="Jenin">Jenin</option>
  <option value="Hebron">Hebron</option>
  </select>
  
  <br> <br>
  
    Position:<br>
  <select name="position" class="selectX">
  <option value="Developer">Developer</option>
  <option value="Manager">Manager</option>
  </select>
 
  <br><br>
  <input type="submit" value="addUser" class="btn btn-primary btn-lg pull-right">
</form> 


  </div>
</div>
</div>

