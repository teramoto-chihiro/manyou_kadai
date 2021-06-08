class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  def index
    if params[:sort_deadline]
      @tasks = current_user.tasks.order(deadline: :desc).page(params[:page]).per(5)
    elsif params[:sort_priority]
      @tasks = current_user.tasks.order(priority: :desc).page(params[:page]).per(5)
    elsif params[:search]
      if params[:search_title].present? && params[:search_status].present?
        @tasks = current_user.tasks.search_title(params[:search_title]).search_status(params[:search_status]).page(params[:page]).per(5)
      elsif params[:search_title].present?
        @tasks = current_user.tasks.search_title(params[:search_title]).page(params[:page]).per(5)
      elsif params[:search_status].present?
        @tasks = current_user.tasks.search_status(params[:search_status]).page(params[:page]).per(5)
      else
        @tasks = current_user.tasks.order(created_at: :desc).page(params[:page]).per(5).page(params[:page]).per(5)
      end
    else
      @tasks = current_user.tasks.order(created_at: :desc).page(params[:page]).per(5)
    end
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = current_user.tasks.build(task_params)
    if params[:back]
      render :new
    else
      if @task.save
        redirect_to tasks_path, notice: "タスクを作成しました"
      else
        render :new
      end
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to tasks_path, notice: "タスクを編集しました"
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path, notice:"タスクを削除しました"
  end

  def confirm
    @task = current_user.tasks.build(task_params)
    render :new if @task.invalid?
  end

  private
  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :content, :deadline, :status, :priority, :user_id, { label_ids: [] })
  end
end
