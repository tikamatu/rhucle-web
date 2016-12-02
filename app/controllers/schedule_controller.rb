class ScheduleController < ApplicationController
  def index
    @live = Event.all.order("started_at")
  end
end
