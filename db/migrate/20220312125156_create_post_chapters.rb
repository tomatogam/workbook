class CreatePostChapters < ActiveRecord::Migration[5.2]
  def change
    create_table :post_chapters do |t|
      t.text :subtitle
      t.integer :post_id

      t.timestamps
    end
  end
end
