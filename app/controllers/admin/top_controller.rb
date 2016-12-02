class Admin::TopController < Admin::ApplicationController
  layout 'admin_application'
  before_action :set_top_photo, only: [:show, :edit, :update, :destroy]

  # GET /top_photo
  # GET /top_photo.json
  def index
    @top_photos = TopPhoto.all.order(:order)
  end

  # GET /top_photo/1
  # GET /top_photo/1.json
  def show
  end

  # GET /top_photo/new
  def new
    @top_photo = TopPhoto.new
  end

  # GET /top_photo/1/edit
  def edit
    @top_photo.photo.cache!
  end

  # POST /top_photo
  # POST /top_photo.json
  def create
    @top_photo = TopPhoto.new(top_photo_params)
    all_photo = TopPhoto.all

    respond_to do |format|
      if @top_photo.save
        all_photo.select { |photo| photo.id != @top_photo.id && photo.order >= @top_photo.order }.each do |photo|
          photo.order = photo.order + 1
          photo.save
        end
        format.html { redirect_to admin_top_path(@top_photo), notice: 'TopPhotoo box was successfully created.' }
        format.json { render :show, status: :created, location: @top_photo }
      else
        format.html { render :new }
        format.json { render json: @top_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /top_photo/1
  # PATCH/PUT /top_photo/1.json
  def update
    all_photo = TopPhoto.all
    respond_to do |format|
      if @top_photo.update(top_photo_params)
        all_photo.select { |photo| photo.id != @top_photo.id && photo.order >= @top_photo.order }.each do |photo|
          photo.order = photo.order + 1
          photo.save
        end
        format.html { redirect_to admin_top_path(@top_photo), notice: '正常に編集しました。' }
        format.json { render :show, status: :ok, location: @top_photo }
      else
        format.html { render :edit }
        format.json { render json: @top_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /top_photo/1
  # DELETE /top_photo/1.json
  def destroy
    order = @top_photo.order
    @top_photo.destroy
    TopPhoto.all.select { |photo| photo.order > order }.each do |photo|
      photo.order = photo.order - 1
      photo.save
    end
    respond_to do |format|
      format.html { redirect_to admin_top_index_url, notice: '正常に削除しました。' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_top_photo
      @top_photo = TopPhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def top_photo_params
      params
        .require(:top_photo)
        .permit(:url,
                :order,
                :photo,
                :photo_cache,
                :remove_photo)
    end
end
