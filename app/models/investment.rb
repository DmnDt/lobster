class Investment < ApplicationRecord
  belongs_to :investor
  belongs_to :project
  has_one :investee, through: :project # Afin de pouvoir faire Investment.investee
end
