class Project < ApplicationRecord
  belongs_to :investee
  has_many_attached :documents # PDFs de la dataroom
  has_one :user, through: :investee
  has_many :investments
  INDUSTRIES =['Tech', 'E-commerce', 'IT finance', 'Deep tech', 'Transformation industrielle', 'Agroalimentaire', 'Téléphonie', 'Banque en ligne' ]
  OBJECTIFS =['Financement post COVID', "Location d'équipements", "Ouvrir de nouveaux bureaux", "Financer une campagne de communication", "Acheter des machines"]
  include PgSearch::Model
  pg_search_scope :search_by_name_and_industry,
                  against: [ :name, :industry ], # Search by project name and/or industry
                  using: {
                    tsearch: { any_word: true, prefix: true } # Options de pg_search
                  }
end
