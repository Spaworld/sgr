class CreateJoinTableBrandsRatings < ActiveRecord::Migration
  def change
    create_join_table :brands, :ratings do |t|
      t.index [:brand_id, :rating_id]
      t.index [:rating_id, :brand_id]
    end
  end
end
