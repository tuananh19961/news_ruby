class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :user_id
      t.string :integer
      t.string :post_id
      t.string :integer
      t.string :content
      t.string :string

      t.timestamps
    end
  end
end
