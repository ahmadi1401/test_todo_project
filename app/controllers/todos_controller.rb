class TodosController < ApplicationController
    before_action :set_todo, only: [:show, :edit, :update, :destroy, :change]
  def show
  end

  def index
    @tasks = Todo.all.order(" created_at DESC").limit(10)
  end

  def new
    @todo = Todo.new

  end

  def edit
  end

  def create
    @todo = Todo.new(params_todo)
    if @todo.save
      flash[:notice] = "todo was created successfully"
      redirect_to @todo
    else
      render 'new'
    end
  end

  def update
    if @todo.update(params_todo)
      flash[:notice] = "todo was updated successfully"
      redirect_to @todo
    else
      render 'edit'
    end
  end

  def destroy
    @todo.destroy
    redirect_to todos_path
  end

  def change
    @task= Todo.find(params[:id])
    @task.complete = params[:complete]
    @task.save
    redirect_to todos_path

  end


  private

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def params_todo
    params.require(:todo).permit(:task)
  end
end
