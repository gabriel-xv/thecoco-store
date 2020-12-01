class Review < ApplicationRecord
  belongs_to :doll
  belongs_to :user

  validates :content, presence: true
end
