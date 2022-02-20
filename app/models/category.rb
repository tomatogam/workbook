class Category < ApplicationRecord
  belongs_to :genre
  has_many :sub_categories
end
