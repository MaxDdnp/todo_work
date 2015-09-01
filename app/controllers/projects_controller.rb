class ProjectsController < ApplicationController


    # GET /projects
    def index
      @projects = Project.all
    end

    # GET /projects/1
    def show

    end


    # GET /projects/new
    def new
      @project = Project.new
    end

    def create
      @project = Project.new(project_params)
      save_project
    end

    # GET /projects/1/edit
    def edit
      @project = Project.find(params[:id]).first
      render "edit"
    end

    def update
      @project = Project.find(params[:id]).first
      @project.assign_attributes(project_params)
      save_task
    end

    def destroy
      @project = Project.find(params[:id])
      @project.destroy
      @projects = Project.all
    end

      def save_project
        if @project.save
          @projects = Project.all
          redirect_to action: "index"
         else
          render "new"
        end
      end


    private
      def project_params
        params.require(:project).permit(:name)
      end


end
