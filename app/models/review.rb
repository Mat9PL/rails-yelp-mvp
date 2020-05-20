class Review < ApplicationRecord
  belongs_to :restaurant


  RATING_OPTIONS = (0..5).to_a.freeze
  validates :content, presence: true
  validates :restaurant_id, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: RATING_OPTIONS }
end
