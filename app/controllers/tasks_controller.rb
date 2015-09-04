class TasksController < ApplicationController

  before_action :set_task, except: [:create, :new]

    def new
      @task = Task.new
      render :show_form
    end

    def create
      @task = Task.new(task_params)
      save_task
    end

    def edit
      render "edit"
    end

    def update
      @task.assign_attributes(task_params)
      save_task
    end

    def destroy
      @task.destroy
      @tasks = Task.all
    end

    def complete
      @task.update_attribute(:status, "done")
      redirect_to projects_path, notice: "Todo item completed"
    end

    private

    def save_task
      if @task.save
        @tasks = Task.all
        redirect_to projects_path
      else
        render "edit"
      end
    end

    def set_task
       @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:name, :status, :project_id, :deadline)
    end
end
