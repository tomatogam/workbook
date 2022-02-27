class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :title
      t.text :detail
      t.datetime :release
      t.integer :sub_category_id

      t.timestamps
    end
  end
end
