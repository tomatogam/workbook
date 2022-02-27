class SubCategory < ApplicationRecord
  belongs_to :category
  has_many :posts
  #validates :category_id, presence: true
  #validates :title, presence: true, length: { maximum: 30 }
end
