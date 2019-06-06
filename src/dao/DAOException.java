package dao;

public class DAOException extends Exception {

	private static final long serialVersionUID = 1L;

	/**
	 * Code de l'erreur :
	 *  -1 s'il y a une exception chaînée ;
	 *  1 pour connexion pas ouverte ; 
	 *  2 pour connexion déjà ouverte ;
	 *   4 si pas de transaction en cours ;
	 */
	private int codeErreur;

	public DAOException() {
	}

	public DAOException(String message) {
		this(message, 0);
	}

	public DAOException(String message, Throwable cause) {
		super(message, cause);
		this.codeErreur = -1;
	}

	public DAOException(Throwable cause) {
		this(null, cause);
	}

	public DAOException(String message, int codeErreur) {
		super(message);
		this.codeErreur = codeErreur;
	}

	public void printStackTrace() {

	}

	public int getCodeErreur() {
		return codeErreur;
	}

	public void setCodeErreur(int codeErreur) {
		this.codeErreur = codeErreur;
	}

}
