class Api::EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.where(id: @eventId)
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      render :show
    else
      render json: @event.errors.full_messages, status: 422
    end
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      render :show
    else
      render json: @event.errors.full_messages, status: 422
    end
  end

  def destroy
    @event = Event.find(params[:id])
    if Event.destroy(@event.id)
      render json: @event.id
    else
      render json: @event.errors.full_messages, status: 422
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :start_time, :end_time, :all_day)
  end

end
