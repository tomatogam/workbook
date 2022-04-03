class Post < ApplicationRecord
  belongs_to :sub_category
  belongs_to :user
  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :dislikes, dependent: :destroy
  has_many :post_chapters, dependent: :destroy
  has_many :comments, dependent: :destroy
  default_scope -> { order(created_at: :desc) }
  #validates :user_id, presence: true
  #validates :sub_category_id, presence: true
  #validates :title, presence: true, length: { maximum: 100 }
  #validates :detail, length: { maximum: 500 }

  def liked?(user)
    likes.where(user_id: user.id).exists?
  end

  def disliked?(user)
    dislikes.where(user_id: user.id).exists?
  end
end
