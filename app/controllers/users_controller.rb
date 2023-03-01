class UsersController < ApplicationController

  def index

    @users = User.find_by(id: current_user.id)
    render :index
    
  end

  def show
    @user = User.find_by(id: params[:id])
    render :show
  end

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      image_url: params[:image_url],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def update
    user = User.find_by(id: params[:id])

    user.first_name = params["first_name"] || user.first_name
    user.last_name = params["last_name"] || user.last_name
    user.email = params["email"] || user.email
    user.image_url = params["image_url"] || user.image_url
    user.phone = params["phone"] || user.phone
    user.birth_date = params["birth_date"] || user.birth_date
    user.home_address = params["home_address"] || user.home_address
    user.bio = params["bio"] || user.bio

    if user.save
      render json: user.as_json
    else
      render json: { errors: user.errors.full_mesages}, status: :unprocessable_entity
    end
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.delete
      render json: {message: "User successfully deleted."}
  end

end
