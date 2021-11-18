class Van < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :model, presence: true
  validates :description, presence: true
  validates :capacity, presence: true
  validates :price, presence: true

  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
