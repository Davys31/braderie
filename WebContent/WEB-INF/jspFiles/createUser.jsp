<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
	
<!DOCTYPE html>
<html lang= "fr">
	<head>
	<title>Création d'un compte</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css"
		href="styles/createUser.css">
	<script src="js/createUser.js"></script>
	</head>
	
	
	<body>
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li class="active"><a href="acceuil.html">Acceuil</a></li>
						<li><a href="#">Contact</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="container-fluid text-center">
			<div class="row content">
				<div class="col-sm-2 sidenav">
		
				</div>
				<div class="col-sm-8 text-left">
					<div class="container">
						<h2>Créer mon compte</h2>
						<br>
						<form name="authentification" onsubmit="return validPass()">
							<div class="form-group  form-width">
								<label for="userName">Nom:</label> <input type="text"
									class="form-control" id="userName">
							</div>
							<div class="form-group  form-width">
								<label for="prenom">Prénom:</label> <input type="text"
									class="form-control" id="prenom">
							</div>
							<div class="form-group  form-width">
								<label for="adress">Adresse:</label> <input type="text"
									class="form-control" id="adress">
							</div>
							<div class="form-group  form-width">
								<label for="tel">Téléphone:</label> <input type="text"
									class="form-control" id="tel">
							</div>
							<div class=" form-group form-width">
								<label for="email">E-mail:</label> <input type="email"
									class="form-control" id="identif"
									placeholder="Ex: macheproduguidon@gmail.com" name="email">
							</div>
							<div class="form-group form-width">
								<label for="mdp">Mot de passe:</label> <input type="password"
									class="form-control" id="mdp"
									placeholder="Saisissez votre mot de passe" name="mdp">
							</div>
							<div class="checkbox">
								<label><input type="checkbox" name="remember">Se
									souvenir de moi</label>
								<hr>
							</div>
							<button type="submit" class="btn btn-primary btn-block form-width">Envoyer</button>
							<hr>
							<button type="submit" class="btn btn-default">Réinitialiser</button>
						</form>
					</div>
				</div>
				<div class="col-sm-2 sidenav">
					<!-- 					<div class="well">					 -->
					<div>
						<p>
							<a href="acceuil.html" class="btn btn-primary btn-lg active"
								role="button" aria-pressed="true">Retour</a>
						</p>
					</div>
					<!-- 					<div class="well"> -->
					<div></div>
				</div>
			</div>
		</div>
		<footer class="container-fluid text-center">
			<p>Grande braderie</p>
			<p class="mt-5 mb-3 text-muted text-center">© DB_LabGrandeBraderie
				04-2019</p>
		</footer>
	
	</body>
</html>