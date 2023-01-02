class EventsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]


  def index
    events = Event.all
    render json: events.as_json
  end 

  def show
  end

  def create

  event = Event.new(
    name: params[:name],
    description: params[:description],
    address: params[:address],
    image_url: params[:image_url],
    start_time: params[:start_time],
    end_time: params[:end_time],
  )

    if event.save
      render json: { message: "Event created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end

  end

  def update
    event = Event.find_by(id: params["id"])

    event.name = params["name"] || event.name
    event.description = params["description"] || event.description
    event.address = params["address"] || event.address
    event.image_url = params["image_url"] || event.image_url
    event.start_time = params["start_time"] || event.start_time
    event.end_time = params["image_url"] || event.image_url

    if event.save
      render json: event.as_json
    else
      render json: { errors: event.errors.full_mesages}, status: :unprocessable_entity
    end
    
  end

  def destroy
    event = Event.find_by(id: params["id"])
    event.destroy
    render json: {message: "Event successfully removed."}
  end

end
