class Project < ApplicationRecord
  belongs_to :investee
  include PgSearch::Model
  pg_search_scope :search_by_name_and_industry,
                  against: [ :name, :industry ],
                  ignoring: :accents,
                  using: {
                    tsearch: { prefix: true }
                  }
end
