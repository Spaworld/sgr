class CreateJoinTableBrandsPhotos < ActiveRecord::Migration
  def change
    create_join_table :brands, :photos do |t|
      t.index [:brand_id, :photo_id]
      t.index [:photo_id, :brand_id]
    end
  end
end
