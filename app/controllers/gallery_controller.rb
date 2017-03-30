class GalleryController < ApplicationController
  def index
    @images = VisualArt.all.order(designed_at: :desc)
  end
end
