package modele;

public class User {

	//	Attributs
    private long IdUser;
	private String login;
    private String password;
    private int  nbreConnexion;
    
    // Constructeur sans paramètre
    public User() {       
    }
   
    //Constructeur avec paramètres
    public User( long idUser, String login, String password, int nbreConnexion ) {
        this.setIdUser( idUser );
        this.setLogin( login );
        this.setPassword( password );
        this.setNbConnexion( nbreConnexion );
    }
    
    public long getIdUser() {
		return IdUser;
	}

	public void setIdUser(long idUser) {
		IdUser = idUser;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getNbConnexion() {
		return nbreConnexion;
	}

	public void setNbConnexion(int nbConnexion) {
		this.nbreConnexion = nbConnexion;
	}

   
    @Override
    public String toString() {
        return "User[IdUser=" + IdUser + ", login=" + login + ", password=" + 
               password + ", nbreConnexion=" + nbreConnexion + "]";
    }
    
}
