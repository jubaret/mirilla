class BusinessUnit < ApplicationRecord
  MGT_UNIT = ["South", "North-East", "Greater NYC", "North-West", "South-West"]

  has_many :client_relationships, dependent: :destroy
  has_many :clients, through: :client_relationships

  validates :management_unit, presence: true, inclusion: { in: MGT_UNIT,
    message: "%{value} is not a valid management unit" }
  validates :name, presence: true
  validates :erp_code, presence: true
  validates :company_code, presence: true
  validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
