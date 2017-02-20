class Admin::BiographyController < Admin::ApplicationController
  layout 'admin_application'
  before_action :set_biography, only: [:show, :edit, :update]

  # GET /biography/1
  # GET /biography/1.json
  def show
  end

  # GET /biography/1/edit
  def edit
  end

  # PATCH/PUT /biography/1
  # PATCH/PUT /biography/1.json
  def update
    respond_to do |format|
      if @biography.update(biography_params)
        format.html { redirect_to admin_biography_path(@biography), notice: 'edit successfully' }
        format.json { render :show, status: :ok, location: @biography }
      else
        format.html { render :edit }
        format.json { render json: @biography.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_biography
      @biography = Biography.last
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def biography_params
      params
        .require(:biography)
        .permit(:photo,
                :photo_cache,
                :remove_photo,
                :profile)
    end
end
