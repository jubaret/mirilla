class CreateClientRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :client_relationships do |t|
      t.references :business_unit, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
