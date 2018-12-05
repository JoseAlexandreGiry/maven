package com.gtm;

import java.util.List;

public interface IGestionVoiture {

	public int ajouterVoiture(Voiture v, Personne p);
	public int changerProprio(Voiture v, Personne p);
	public int detruireVoiture(Voiture v);
	public Voiture getVoiture(int idVoiture);
	public List<Voiture> findAllVoitures();
	public int ajouterVoiture(Voiture v);
	public int updateVoiture(Voiture v);
	public void detruireVoiture(Integer idVoit);
}
