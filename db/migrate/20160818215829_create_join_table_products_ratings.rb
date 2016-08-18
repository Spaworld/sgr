class CreateJoinTableProductsRatings < ActiveRecord::Migration
  def change
    create_join_table :products, :ratings do |t|
      t.index [:product_id, :rating_id]
      t.index [:rating_id, :product_id]
    end
  end
end
