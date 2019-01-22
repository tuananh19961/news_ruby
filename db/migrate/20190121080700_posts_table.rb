class PostsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :category_id
      t.string :title
      t.text :content
      t.string :image

      t.timestamps
  end
end
