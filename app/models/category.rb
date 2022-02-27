class Category < ApplicationRecord
  belongs_to :genre
  has_many :sub_categories
  #validates :genre_id, presence: true
  #validates :title, presence: true, length: { maximum: 30 }
end
