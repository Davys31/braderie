function validPass(){
	var pass = document.forms[authentification][mdp].value;
	if (pass =="root"){
		alert("Connection réussie");
		return false ;
	}
}