class TasksController < ApplicationController

  def index
    tasks =  Task.where(user_id: current_user.id)

    render json: tasks.as_json

  end


  def create
    task = Task.new(
      title: params[:title],
      user_id: current_user.id,
      status: params[:status]
    )

    if task.save
      render json: { message: "Task created successfully" }, status: :created
    else
      render json: { errors: task.errors.full_messages }, status: :bad_request
    end
  end

  def update
    task = Task.find_by(id: params[:id])

    task.title = params["title"] || task.title
    

    if task.save
      render json: task.as_json
    else
      render json: {errors: task.errors.full_messages}, status: :unprocessable_entity
    end

  end

  def destroy

    task = Task.find_by(id: params[:id])
    task.delete
    render json: {status:"Task removed successfully."}
    
  end

end
