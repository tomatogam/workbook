class StaticPagesController < ApplicationController
  def home
    @genres = Genre.all
    @categories = Category.all
    @sub_categories = SubCategory.all
  end
end
