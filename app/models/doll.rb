class Doll < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_one :adoption, dependent: :destroy
  has_many_attached :photos

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
end
