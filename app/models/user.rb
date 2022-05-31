class User < ApplicationRecord
  has_many :tickets, dependent: :destroy
  has_many :orders
  has_one_attached :avatar
  validates :name, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
