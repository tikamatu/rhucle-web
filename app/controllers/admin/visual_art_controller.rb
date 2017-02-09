class Admin::VisualArtController < Admin::ApplicationController
  layout 'admin_application'
  before_action :set_image, only: [:destroy]

  # GET /image
  # GET /image.json
  def index
    @images = VisualArt.all.order(created_at: :desc)
  end

  # GET /image/new
  def new
    @image = VisualArt.new
  end

  # POST /image
  # POST /image.json
  def create
    @image = VisualArt.new(image_params)

    respond_to do |format|
      if @image.save
        format.html { redirect_to admin_visual_art_index_path, notice: 'VisualArto box was successfully created.' }
        format.json { render :show, status: :created, location: @image }
      else
        format.html { render :new }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image/1
  # DELETE /image/1.json
  def destroy
    @image.destroy
    respond_to do |format|
      format.html { redirect_to admin_visual_art_index_url, notice: '正常に削除しました。' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = VisualArt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params
        .require(:visual_art)
        .permit(:image,
                :image_cache,
                :remove_image)
    end
end
