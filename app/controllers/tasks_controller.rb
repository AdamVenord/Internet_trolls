class TasksController < ApplicationController
  before_action :set_stuff

  def index
    @task = @stuff.tasks
  end

  def new
    @task = Task.new
  end

  def create
  end

  def update
  end
  
  def destroy
  end

  def show
  end


  private
    def set_stuff
      @stuff = Stuff.find(params[:stuff_id])
    end

    def task_params
      params.require(:task).permit(:name)
    end
end