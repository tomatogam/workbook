class CreatePostChapterAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :post_chapter_answers do |t|
      t.text :answer
      t.integer :post_chapter_question_id

      t.timestamps
    end
  end
end
