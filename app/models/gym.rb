class Gym < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :location, presence: true
  validates :type_of_gym, presence: true, inclusion: { in: ["Weights", "Cardio", "Yoga Studio"]}
  validates :cost, presence: true, numericality: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  has_one_attached :photo
end
