class Admin::ScheduleController < Admin::ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /schedule
  # GET /schedule.json
  def index
    @events = Event.all
  end

  # GET /schedule/1
  # GET /schedule/1.json
  def show
  end

  # GET /schedule/new
  def new
    @event = Event.new
  end

  # GET /schedule/1/edit
  def edit
  end

  # POST /schedule
  # POST /schedule.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to admin_schedule_path(@event), notice: 'Event box was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedule/1
  # PATCH/PUT /schedule/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to admin_schedule_path(@event), notice: '正常に編集しました。' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedule/1
  # DELETE /schedule/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to admin_schedule_url, notice: '正常に削除しました。' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params
        .require(:event)
        .permit(*(Event.column_names))
    end
end
