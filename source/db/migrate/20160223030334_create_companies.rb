class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :zip_code
      t.integer :customer_id
      t.string :customer_type

      t.timestamps null: false
    end

    add_index :companies, [:customer_id, :customer_type]
  end
end
