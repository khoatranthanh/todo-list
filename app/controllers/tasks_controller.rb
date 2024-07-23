class TasksController < ApplicationController
  before_action :set_task, only: %i[ update ]

  # GET /tasks
  def index
    @tasks = Task.order(created_at: :desc)
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # POST /tasks
  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to tasks_url, notice: "Task was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tasks/1
  def update
    @task.delete
    redirect_to tasks_url, notice: "Task completed!"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:title, :sub_title, :due_date, :priority)
    end
end
