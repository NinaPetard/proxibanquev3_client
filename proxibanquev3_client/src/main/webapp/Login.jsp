
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Page d'authentification - ProxiBanque SI</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="shortcut icon" href="assets/img/ProxiBanque.jpg">
    </head>

    <body>

        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>Page de connexion</strong></h1>
                            <div class="description">
                            <center><img class="img-responsive" src="assets/img/ProxiBanque.jpg" alt="logo" style="width:40%"><center><br>
                            	<p>
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                            		<p>Merci de rentrez votre identifiant et votre mot de passe pour acc�der aux services de ProxiBanque</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form action="loaddataCons" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Identifiant</label>
			                        	<input type="text" name="loginuser" placeholder="Identifiant..." class="form-username form-control" id="loginusere">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Mot de passe</label>
			                        	<input type="password" name="mdpuser" placeholder="Mot de passe..." class="form-password form-control" id="mdpuser">
			                        </div>
			                        <button type="submit" class="btn">Soumettre</button>
			                    </form>
		                    </div>
                        </div>
                </div>
            </div>
            
        </div>


        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        

    </body>

</html>