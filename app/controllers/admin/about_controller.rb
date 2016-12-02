class Admin::AboutController < Admin::ApplicationController
  layout 'admin_application'
  before_action :set_about, only: [:show, :edit, :update]

  # GET /about/1
  # GET /about/1.json
  def show
  end

  # GET /about/1/edit
  def edit
  end

  # PATCH/PUT /about/1
  # PATCH/PUT /about/1.json
  def update
    respond_to do |format|
      if @about.update(about_params)
        format.html { redirect_to admin_about_path(@about), notice: '正常に編集しました。' }
        format.json { render :show, status: :ok, location: @about }
      else
        format.html { render :edit }
        format.json { render json: @about.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about
      @about = About.last
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def about_params
      params
        .require(:about)
        .permit(:photo,
                :photo_cache,
                :remove_photo,
                :profile)
    end
end
