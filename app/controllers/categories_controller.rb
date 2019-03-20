class CategoriesController < ApplicationController
  before_action :get_category, only: [:show, :edit, :update]

  def index
    @categories = Category.all
  end

  def show

  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(get_params)
    redirect_to category_path
  end

  def edit

  end

  def update

    @category.update(get_params)
    redirect_to category_path
  end

  private

  def get_category
    @category = Category.find(params[:id])
  end

  def get_params
    params.require(:category).permit(:name)
  end

end
