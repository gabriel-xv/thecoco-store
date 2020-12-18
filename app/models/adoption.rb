class Adoption < ApplicationRecord
  belongs_to :user
  belongs_to :doll
  monetize :amount_cents
end
