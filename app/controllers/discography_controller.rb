class DiscographyController < ApplicationController
  before_action :set_disc, only: :show
  def index
    @type = ReleaseType.find_by(type: params[:type])
    if @type.blank?
      @discs = Disc.all
    else
      @discs = Disc.where(release_type: @type.id).order("released_on DESC")
    end
  end

  def show
  end

  private

  def set_disc
    @disc = Disc.find_by!(title: params[:title])
  end
end
