class Doll < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  monetize :price_cents
end
