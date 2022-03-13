class CreatePostChapterQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :post_chapter_questions do |t|
      t.text :question
      t.integer :question_type
      t.integer :post_chapter_id

      t.timestamps
    end
  end
end
