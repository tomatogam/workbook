class SearchesController < ApplicationController
    def search
        @post = Post.all
        @genres = Genre.find_by(params[:id])
        @categories = Category.find_by(params[:id])
        @sub_categories = SubCategory.find_by(params[:id])
    end

    def result
        @genres = Genre.find_by(params[:id])
        @categories = Category.find_by(params[:id])
        @sub_categories = Subcategory.find_by(params[:id])
    end
end
