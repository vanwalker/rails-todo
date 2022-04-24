class GroceriesController < ApplicationController
    before_action :set_todo

  def new
    @grocery = Grocery.new
  end

  def create
    @grocery = Grocery.new(grocery_params)
    @grocery.todo = @todo

    if @grocery.save
      redirect_to todo_path(@todo)
    else
      render :new
    end
  end



  def update
    @grocery = Grocery.find(params[:id])
    @grocery.update(grocery_params)
    redirect_to todo_path(@todo)
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

  def set_todo
    @todo = Todo.find(params[:todo_id])
  end

  def grocery_params
    params.require(:grocery).permit(:quantity, :nom, :priority)
  end
end
