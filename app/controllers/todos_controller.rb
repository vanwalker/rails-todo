class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def edit
  @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update(todo_params)
  end

  def create
    @todo = Todo.new(todo_params)
      if @todo.save
        redirect_to todo_path(@todo)
      else
        render :create
      end
  end

  def new
    @todo = Todo.new
    # @user = current_user
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :description, :date, :mark)
  end
end
