class CategoriesController < ApplicationController

  def index

  end

  def new
     @category =  Category.new
  end

  def create
    @category = Category.new(set_params)
    if @category.save
      flash[:msg] = "sucessfully created "
      redirect_to dashboard_path
    else
      flash[:msg] = "New category failed"
    end 
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def show
  end

  private

  def set_params
    params.require(:category).permit(:name)
  end
end
