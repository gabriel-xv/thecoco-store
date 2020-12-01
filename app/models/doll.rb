class Doll < ApplicationRecord
  belongs_to :user
  has_many :reviews

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
end
