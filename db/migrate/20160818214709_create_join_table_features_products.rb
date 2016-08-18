class CreateJoinTableFeaturesProducts < ActiveRecord::Migration
  def change
    create_join_table :features, :products do |t|
      t.index [:feature_id, :product_id]
      t.index [:product_id, :feature_id]
    end
  end
end
