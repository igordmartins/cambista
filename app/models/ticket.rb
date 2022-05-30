class Ticket < ApplicationRecord
  belongs_to :user
  has_one :order
end
