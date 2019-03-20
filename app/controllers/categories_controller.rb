class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    set_category
    @category_posts = @category.posts 
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)
    redirect_to @category
  end

  def edit
    set_category
  end

  def update
    set_category
    @category.update(category_params)
    redirect_to @category
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def set_category
    @category = Category.find(params[:id])
  end
end
