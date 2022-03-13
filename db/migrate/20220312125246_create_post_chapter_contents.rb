class CreatePostChapterContents < ActiveRecord::Migration[5.2]
  def change
    create_table :post_chapter_contents do |t|
      t.text :content
      t.integer :post_chapter_id

      t.timestamps
    end
  end
end
