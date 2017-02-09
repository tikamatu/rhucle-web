class VisualArtController < ApplicationController
  def index
    @images = VisualArt.all.order(created_at: :desc)
  end
end
