ALTER TABLE ebm_saisie
  ADD CONSTRAINT ebm_saisie_ibfk_1 FOREIGN KEY (fk_grille) REFERENCES ebm_grille (pk_grille);

ALTER TABLE ebm_valeurs
  ADD CONSTRAINT ebm_valeurs_ibfk_1 FOREIGN KEY (fk_saisie) REFERENCES ebm_saisie (pk_saisie);
COMMIT;
