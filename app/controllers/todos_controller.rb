class TodosController < ApplicationController
  def index
    top
    # my_todos
      if current_user
      @mytodos = Todo.where(user_id: current_user.id)
      @todos = Todo.all
      else
        @todos = Todo.all
      end
  end

  def top
    @top = Todo.where(priority: 3..).order("priority ASC")
    @avg = Todo.average(:priority)
  end

  def my_todos
    @mytodos = Todo.where(user_id: current_user.id)
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
    redirect_to todo_path(@todo)
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.user = current_user

      if @todo.save
        redirect_to todos_path
      else
        render :new
      end
  end

  def new
    @user = current_user
    @todo = Todo.new

  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :description, :date, :mark, :user_id, :priority)
  end
end
