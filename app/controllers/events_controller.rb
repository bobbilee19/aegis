class EventsController < ApplicationController
  def index
    @events = Event.all
  end
  def update
    if @event.update(event_params)
      redirect_to @event, notice: 'Event was successfully updated.'
    else
      render :edit
    end
  end

  def edit
  end

  def new
  end
end
