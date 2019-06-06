package modele;

public class Lot {

	// Attributs
	private long idLot;
	private long idArticle;
	private String nomLot;
	private long quantite;

	// Constructeur
	public Lot(long idLot, long idArticle, String nomLot, long quantite) {
		this.setIdLot(idLot);
		this.setIdArticle(idArticle);
		this.setNomLot(nomLot);
		this.setQuantite(quantite);
	}

	// GETTERS & SETTERS
	public long getIdLot() {
		return idLot;
	}

	public void setIdLot(long idLot) {
		this.idLot = idLot;
	}

	public long getIdArticle() {
		return idArticle;
	}

	public void setIdArticle(long idArticle) {
		this.idArticle = idArticle;
	}

	public String getNomLot() {
		return nomLot;
	}

	public void setNomLot(String nomLot) {
		this.nomLot = nomLot;
	}

	public long getQuantite() {
		return quantite;
	}

	public void setQuantite(long quantite) {
		this.quantite = quantite;
	}
}
