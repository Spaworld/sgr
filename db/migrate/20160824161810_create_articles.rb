class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.string :slug
      t.string :meta_title
      t.string :meta_description

      t.timestamps null: false
    end
  end
end
