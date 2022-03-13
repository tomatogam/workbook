class AdminsController < ApplicationController
  def new
    @category = Category.new
    @genre = Genre.new
  end
end
