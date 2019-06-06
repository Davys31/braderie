
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="styles/acceuil.css">
				
		<!-- 		Titre de ma page web -->
		<title>DB_Lab_GrandeBraderie_Acceuil</title>
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	</head>
	
	<body>
		<!-- 	barre de navigation en haut de page -->
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
	
				<!-- 		onglets de barre de navigation -->
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Acceuil</a></li>						
					</ul>
				</div>
			</div>
		</nav>
	
		<!-- 		Contenu au centre de ma page	 -->
		<div class="container-fluid text-center">
			<div class="row content">
	
				<!-- 				Contenu de ma section de Gauche de ma page -->
				<div class="col-sm-2 sidenav">
					<p>
						<a href="articles.html" class="btn btn-primary btn-lg active"
							role="button" aria-pressed="true">Voir les articles</a>
					</p>
				</div>
	
				<!-- 					Section centrale de page -->
				<div class="col-sm-8 text-center">
					<h1>Bienvenue sur le site de la Grande Braderie du printemps 2019</h1>
					<hr>
	
					<!-- 						insertion d’une image de présentation -->
					<img class="img-responsive" src="images/braderie.jpg" alt="braderie">
					<hr>
				</div>
	
				<!-- 					Contenu de ma section de Droite ma page  -->
				<div class="col-sm-2 sidenav">
					<div>
						<p>
							<a href="authentification.html"
								class="btn btn-primary btn-lg active" role="button"
								aria-pressed="true">Créer un compte</a>
						</p>
						<br>
					</div>
	
					<!-- Section d’authentification de l'utilisateur -->
					<div class="well">
						<label for="email">Identifiant :</label> <input type="email"
							class="form-control" id="identif"
							placeholder="Ex: monmail@gmail.com" name="email"><br>
	
						<!-- case à cocher pour mémoriser l’ adresse e-mail -->
						<div class="checkbox">
							<label><input type="checkbox" name="remember">Mémoriser
								mon identifiant</label><br>
						</div>
						<br>
	
						<!-- insertion du mot de passe -->
						<label for="mdp">Mot de passe:</label> <input type="password"
							class="form-control" id="mdp"
							placeholder="Saisissez votre mot de passe" name="mdp">
						<hr>
	
						<!-- Bouton d'envoi la demande de connection	-->
						<button type="submit" class="btn btn-primary btn-block form-width">Se
							connecter</button>
						<hr>
	
						<!-- Bouton de réinitialisation des cellules -->
						<button type="submit" class="btn btn-default">Réinitialiser</button>
					</div>
				</div>
			</div>
		</div>	
	
		<!-- pied de page -->
		<footer class="container-fluid text-center">
			<p>Grande Braderie de printemps 2019</p>
			<p class="mt-5 mb-3 text-muted text-center">©
				DB_Lab_GrandeBraderie 04-2019</p>
		</footer>
	</body>
</html>