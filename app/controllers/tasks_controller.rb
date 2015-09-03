class TasksController < ApplicationController
    def new
      @task = Task.new
      render :show_form
    end

    def create
      @task = Task.new(task_params)
      save_task
    end

    def edit
      @task = Task.find(params[:id])
      render "edit"
    end

    def update
      @task = Task.find(params[:id])
      @task.assign_attributes(task_params)
      save_task
    end

    def destroy
      @task = Task.find(params[:id])
      @task.destroy
      @tasks = Task.all
    end

    def complete
      @task.update_attribute(:status, "Done")
      redirect_to projects_path, , notice: "Todo item completed"
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

    private

    def task_params
      params.require(:task).permit(:name, :status, :project_id, :deadline)
    end
end
