class ClientRelationship < ApplicationRecord
  belongs_to :business_unit
  belongs_to :client
end
