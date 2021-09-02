class Investee < ApplicationRecord
  belongs_to :user
  validates :SIRET, presence: true
  validates :nom_entreprise, presence: true
  validates :address, presence: true
  validates :domaine_activite, presence: true
  validates :chiffre_affaires, presence: true
  validates :taux_croissance_chiffre_affaires, presence: true
  # validates :marge_brute, presence: true
  # validates :taux_marge_brute, presence: true
  validates :excedent_brut_exploitation, presence: true
  validates :taux_marge_EBITDA, presence: true
end
