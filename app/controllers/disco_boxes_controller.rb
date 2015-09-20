class DiscoBoxesController < ApplicationController
  before_action :set_disco_box, only: [:show, :edit, :update, :destroy]

  # GET /disco_boxes
  # GET /disco_boxes.json
  def index
    @disco_boxes = DiscoBox.all
  end

  # GET /disco_boxes/1
  # GET /disco_boxes/1.json
  def show
  end

  def show_image
    @image = DiscoBox.find(params[:id])
    send_data @image.jacket,
              :filename => 'test.jpg',
              :type => 'image/jpg',
              :disposition => 'inline'
  end

  # GET /disco_boxes/new
  def new
    @disco_box = DiscoBox.new
  end

  # GET /disco_boxes/1/edit
  def edit
  end

  # POST /disco_boxes
  # POST /disco_boxes.json
  def create
    @disco_box = DiscoBox.new(disco_box_params)

    respond_to do |format|
      if @disco_box.save
        format.html { redirect_to @disco_box, notice: 'Disco box was successfully created.' }
        format.json { render :show, status: :created, location: @disco_box }
      else
        format.html { render :new }
        format.json { render json: @disco_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disco_boxes/1
  # PATCH/PUT /disco_boxes/1.json
  def update
    respond_to do |format|
      if @disco_box.update(disco_box_params)
        format.html { redirect_to @disco_box, notice: '正常に編集しました。' }
        format.json { render :show, status: :ok, location: @disco_box }
      else
        format.html { render :edit }
        format.json { render json: @disco_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disco_boxes/1
  # DELETE /disco_boxes/1.json
  def destroy
    @disco_box.destroy
    respond_to do |format|
      format.html { redirect_to disco_boxes_url, notice: '正常に削除しました。' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disco_box
      @disco_box = DiscoBox.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disco_box_params
      params.require(:disco_box).permit(:title, :url, :jacket, :price, :track_list)
    end
end
