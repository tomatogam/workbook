class Post < ApplicationRecord
  belongs_to :sub_category
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  #validates :user_id, presence: true
  #validates :sub_category_id, presence: true
  #validates :title, presence: true, length: { maximum: 100 }
  #validates :detail, length: { maximum: 500 }
end
