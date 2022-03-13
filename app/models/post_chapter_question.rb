class PostChapterQuestion < ApplicationRecord
    belongs_to :post_chapter
    has_many :post_chapter_answers, dependent: :destroy
end
