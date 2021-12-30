class CreateBusinessUnits < ActiveRecord::Migration[6.1]
  def change
    create_table :business_units do |t|
      t.string :name
      t.string :erp_code
      t.string :company_code
      t.string :management_unit

      t.timestamps
    end
  end
end
