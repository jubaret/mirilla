class FixAddressForBu < ActiveRecord::Migration[6.1]
  def change
    change_column :business_units, :address_id, :string
    rename_column :business_units, :address_id, :address
  end
end
