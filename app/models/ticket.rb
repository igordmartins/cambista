class Ticket < ApplicationRecord
  belongs_to :user
  has_one :order, dependent: :destroy
  has_one_attached :photo
  validates :event_name, presence: true
  validates :event_price, presence: true
  validates :event_date, presence: true
  validates :description, presence: true
end
