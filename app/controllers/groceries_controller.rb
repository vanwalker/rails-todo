class GroceriesController < ApplicationController
  def new
    @grocery = Grocery.new
  end

  def create
    @grocery = Grocery.new(grocery_params)
    @grocery.user = current_user

    if @grocery.save
      redirect_to grocerys_path
    else
      render :new
    end
  end

  def update
    @grocery = Grocery.find(params[:id])
    @grocery.update(grocery_params)
    redirect_to grocery_path(@grocery)
  end

  def destroy
    @grocery = Grocery.find(params[:id])
    @grocery.destroy
  end

  def index
    @groceries = Grocery.all
  end

  def edit
    @grocery = Grocery.find(params[:id])
  end

  private

  def grocery_params
    params.require(:grocery).permit(:quantity, :name, :priority)
  end
end
