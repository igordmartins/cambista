class Order < ApplicationRecord
  belongs_to :user
  belongs_to :ticket
  validates :credcard, presence: true
end
