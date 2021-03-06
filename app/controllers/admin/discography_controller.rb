class Admin::DiscographyController < Admin::ApplicationController
  before_action :set_discography, only: [:show, :edit, :update, :destroy]

  # GET /discography
  # GET /discography.json
  def index
    @discographys = Disc.all.order(released_at: :desc)
  end

  # GET /discography/1
  # GET /discography/1.json
  def show
  end

  # GET /discography/new
  def new
    @discography = Disc.new
  end

  # GET /discography/1/edit
  def edit
    @discography.artwork_thumb.cache! if @discography.artwork_thumb.present?
    @discography.artwork_full.cache! if @discography.artwork_full.present?
  end

  # POST /discography
  # POST /discography.json
  def create
    @discography = Disc.new(discography_params)

    respond_to do |format|
      if @discography.save
        format.html { redirect_to admin_discography_path(@discography), notice: 'Discography was successfully created.' }
        format.json { render :show, status: :created, location: @discography }
      else
        format.html { render :new }
        format.json { render json: @discography.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discography/1
  # PATCH/PUT /discography/1.json
  def update
    respond_to do |format|
      if @discography.update(discography_params)
        format.html { redirect_to admin_discography_path(@discography), notice: 'Discography was successfully edited.' }
        format.json { render :show, status: :ok, location: @discography }
      else
        format.html { render :edit }
        format.json { render json: @discography.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discography/1
  # DELETE /discography/1.json
  def destroy
    @discography.destroy
    respond_to do |format|
      format.html { redirect_to admin_discography_url, notice: 'Discography was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discography
      @discography = Disc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def discography_params
      params
        .require(:disc)
        .permit(:title,
                :artist,
                :released_on,
                :record_label,
                :artworked_by,
                :format,
                :catalog,
                :url,
                :listening_url,
                :artwork_thumb,
                :artwork_thumb_cache,
                :remove_artwork_thumb,
                :artwork_full,
                :artwork_full_cache,
                :remove_artwork_full,
                :track_list)
    end
end
