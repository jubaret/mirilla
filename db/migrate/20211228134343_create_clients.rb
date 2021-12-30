class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :industry
      t.string :tax_number
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
