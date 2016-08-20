class CreateProductFeatures < ActiveRecord::Migration
  def change
    create_table :product_features do |t|
      t.integer :product_id
      t.integer :feature_id
      t.integer :rating_id, default: 4

      t.timestamps null: false
    end
  end
end
