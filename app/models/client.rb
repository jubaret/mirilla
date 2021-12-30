class Client < ApplicationRecord
  has_many :client_relationships, dependent: :destroy
  has_many :business_units, through: :client_relationships

  validates :name, presence: true, uniqueness: true
end
