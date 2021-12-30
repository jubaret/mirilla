class AddCoordinatesToBu < ActiveRecord::Migration[6.1]
  def change
    add_column :business_units, :latitude, :float
    add_column :business_units, :longitude, :float
  end
end
