class CreateJoinTableBrandsProducts < ActiveRecord::Migration
  def change
    create_join_table :brands, :products do |t|
      t.index [:brand_id, :product_id]
      t.index [:product_id, :brand_id]
    end
  end
end
