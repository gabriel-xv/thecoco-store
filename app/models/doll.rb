class Doll < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_one :adoption, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
end
