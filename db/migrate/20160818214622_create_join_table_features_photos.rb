class CreateJoinTableFeaturesPhotos < ActiveRecord::Migration
  def change
    create_join_table :features, :photos do |t|
      t.index [:feature_id, :photo_id]
      t.index [:photo_id, :feature_id]
    end
  end
end
