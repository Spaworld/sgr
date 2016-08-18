class CreateJoinTablePhotosProducts < ActiveRecord::Migration
  def change
    create_join_table :photos, :products do |t|
      t.index [:photo_id, :product_id]
      t.index [:product_id, :photo_id]
    end
  end
end
