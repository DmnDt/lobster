class Project < ApplicationRecord
  belongs_to :investee
  has_many_attached :documents
  has_one :user, through: :investee
  has_many :investments

  include PgSearch::Model
  pg_search_scope :search_by_name_and_industry,
                  against: [ :name, :industry ], # Search by project name and/or industry
                  # ignoring: :accents, (TO DO LATER, USER RIGHTS PRBLM)
                  using: {
                    tsearch: { any_word: true, prefix: true }
                  }
end
