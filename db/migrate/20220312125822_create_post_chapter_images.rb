class CreatePostChapterImages < ActiveRecord::Migration[5.2]
  def change
    create_table :post_chapter_images do |t|
      t.string :image
      t.integer :post_chapter_id

      t.timestamps
    end
  end
end
