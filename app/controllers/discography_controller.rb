class DiscographyController < ApplicationController
  before_action :set_disc, only: :show
  def index
    @discs = Disc.all.order("released_on DESC")
  end

  def show
  end

  private

  def set_disc
    @disc = Disc.find_by!(title: params[:title])
  end
end
