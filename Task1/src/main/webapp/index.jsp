<link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="css/logIn.css" rel="stylesheet" id="bootstrap-css">
   
   <br>
   <br> 
    <div class="container">
        <div class="card card-container">
            <img id="profile-img " class="profile-img-card" src="image/arkLogo.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin" action ="LogInServlet" method="post">
                <span id="reauth-email" class="reauth-email"></span>
                <input type="email" name="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
                <br>
                <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required>
				<br>
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Sign in</button>
            </form>
        </div>
    </div>