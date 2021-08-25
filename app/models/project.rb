class Project < ApplicationRecord
  belongs_to :investee
  include PgSearch::Model
  pg_search_scope :search_by_title_and_synopsis,
                  against: [ :title, :synopsis ],
                  using: {
                    tsearch: { prefix: true } # <-- now `superman batm` will return something!
                  }
end
