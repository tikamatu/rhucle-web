class TopController < ApplicationController
  def index
    @top_photos = TopPhoto.all.order(:order)
  end
end
