class Review < ApplicationRecord
  belongs_to :restaurant
  RANGE = (0..5).to_a
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: RANGE }, numericality: { only_integer: true }
end
