class Project < ApplicationRecord
  belongs_to :investee
  has_many_attached :documents
end
