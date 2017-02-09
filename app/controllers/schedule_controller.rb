class ScheduleController < ApplicationController
  def index
    @events = Event.all.order(started_on: :desc).each_with_object({}) do |event, h|
      h[event.started_on.year] ||= []
      h[event.started_on.year] << event
    end
  end
end
