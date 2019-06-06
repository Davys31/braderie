package modele;

public class Article {

	// Attributs d'article
	private long idArticle;
	private String description;
	private String marque;
	private double prixUnitaire;

	// Constructeur avec paramètre
	public Article() {
		this(0, "inconnue", "inconnue", 0);
	}

	public Article(long idArticle, String description, String marque, double prixUnitaire) {
		this.setIdArticle(idArticle);
		this.setDescription(description);
		this.setMarque(marque);
		this.setPrixUnitaire(prixUnitaire);
	}

	// GETTERS & SETTERS
	public long getIdArticle() {
		return idArticle;
	}

	public void setIdArticle(long idArticle) {
		this.idArticle = idArticle;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getMarque() {
		return marque;
	}

	public void setMarque(String marque) {
		this.marque = marque;
	}

	public double getPrixUnitaire() {
		return prixUnitaire;
	}

	public void setPrixUnitaire(double prixUnitaire) {
		this.prixUnitaire = prixUnitaire;
	}
}
