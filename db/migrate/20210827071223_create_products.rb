class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.text :description
      t.integer :company_id
      t.integer :category_id
      t.integer :flavour_id
      t.integer :package_type_id
      t.integer :unicent_price_id
      
      t.timestamps
    end
  end
end
