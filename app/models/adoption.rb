class Adoption < ApplicationRecord
  belongs_to :doll
  belongs_to :user
end
