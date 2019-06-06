<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="fr">
	<head>
		<title>Mon panier</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		<link rel="stylesheet" type="text/css" href="styles/panier.css">
		<script src="js/authentification.js"></script>
	</head>
		<body>
			<nav class="navbar navbar-inverse">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
							<span class="icon-bar"></span> <span class="icon-bar"></span> 
							<span	class="icon-bar"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse" id="myNavbar">
						<ul class="nav navbar-nav">
							<li class="active"><a href="acceuil.html">Acceuil</a></li>
							<li><a href="#">Contact</a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li><a href="acceuil.html"><span	class="glyphicon glyphicon-log-in"></span> Se déconnecter</a></li>
						</ul> 
					</div>
				</div>
			</nav>
			<div class="container-fluid text-center">
				<div class="row content">
					<div class="col-sm-2 sidenav">
						<div>
							<p><a href="#" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Supprimer mon panier</a></p><br><br>
						</div>
						<div>
							<p><a href="#" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Restaurer mon panier</a></p><br><br>
						</div>
						<div>
							<p><a href="#" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Sauvegarder mon panier</a></p><br><br>
						</div>
					</div>
					<div class="col-sm-8 text-left">
						<div class="container">
							<h2>Mon Panier</h2><br>
							<p>Descriptif de ma liste d'achat</p><br>
							<table class="table table-bordered form-width">
								<thead>
									<tr>
										<th>Référence</th>
										<th>Désignation</th>
										<th>Marque</th>
										<th>Prix unitaire</th>
										<th>Quantité</th>
										<th>Supprimer</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>123456789</td>
										<td>Chaussure</td>
										<td>Adidas</td>
										<td>45 €</td>
										<td><input type="number" id="id" placeholder="Min: 1, max: 10000" min="1" max="10000" class="input-sm form-control"></td>
										<td><button type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-trash"></span></button></td>
									</tr>
									<tr>
										<td>123456549</td>
										<td>Veste cuir motard</td>
										<td>Bering</td>
										<td>250 €</td>
										<td><input type="number" id="id" placeholder="Min: 1, max: 10000" min="1" max="10000" class="input-sm form-control"></td>
										<td><button type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-trash"></span></button></td>
									</tr>
									<tr>
										<td>12856549</td>
										<td>Appareil photo reflex modèle D750</td>
										<td>Nikon</td>
										<td>1250 €</td>
										<td><input type="number" id="id" placeholder="Min: 1, max: 10000" min="1" max="10000" class="input-sm form-control"></td>
										 <td><button type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-trash"></span></button></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="container" id="navArt">						             
						  <ul class="pager form-width ">
						    <li class="previous"><a href="#">Précédent</a></li>
						    <li class="next" ><a href="#">Suivant</a></li>
						  </ul>
						</div>
					</div>
					<div class="col-sm-2 sidenav">
<!-- 						<div class="well"> -->
						<div>
							<p><a href="articles.html" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Continuer mes achats</a></p>
						</div>
<!-- 						<div class="well"> -->						
					</div>
				</div>
			</div>			
			<footer class="container-fluid text-center">
				<p>Grande braderie</p>
				<p class="mt-5 mb-3 text-muted text-center">© DB_LabGrandeBraderie 04-2019</p>
			</footer>
		</body>
</html>
