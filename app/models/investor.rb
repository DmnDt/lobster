class Investor < ApplicationRecord
  belongs_to :user
  has_many :projects, through: :investments
end
