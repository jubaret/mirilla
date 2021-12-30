class AddAddressToBu < ActiveRecord::Migration[6.1]
  def change
    add_column :business_units, :address_id, :integer
  end
end
