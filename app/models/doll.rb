class Doll < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_one :adoption, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
end
