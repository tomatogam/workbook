class Genre < ApplicationRecord
  has_many :categories
  #validates :title, presence: true, length: { maximum: 30 }
end
