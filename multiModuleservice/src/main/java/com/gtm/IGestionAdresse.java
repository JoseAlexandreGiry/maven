package com.gtm;

import java.util.List;


public interface IGestionAdresse {

	int insertAdresse(Adresse a);
	int updateAdresse(Adresse a, String numRue, String ville, String codePostal);
	int deleteAdresse(Adresse a);
	List<Adresse> afficherListeAdresse();
	List<Adresse> findAllAdresse();
}
