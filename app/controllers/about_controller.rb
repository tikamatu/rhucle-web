class AboutController < ApplicationController
  def index
    @profile = About.first!
  end
end
