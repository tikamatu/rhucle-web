class BiographyController < ApplicationController
  def index
    @profile = Biography.first!
  end
end
