class CreateJoinTableArticlesPhotos < ActiveRecord::Migration
  def change
    create_join_table :articles, :photos do |t|
      t.index [:article_id, :photo_id]
      t.index [:photo_id, :article_id]
    end
  end
end
