class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :van
  has_many :reviews

  validates :starts_at, presence: true
  validates :ends_at, presence: true
  validates :status, presence: true
  validates :price_total, presence: true
end
