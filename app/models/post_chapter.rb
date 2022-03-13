class PostChapter < ApplicationRecord
    belongs_to :post
    has_many :post_chapter_contents, dependent: :destroy
    has_many :post_chapter_images, dependent: :destroy
    has_many :post_chapter_questions, dependent: :destroy
end
