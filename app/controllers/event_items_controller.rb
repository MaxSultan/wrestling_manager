class EventItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event
  before_action :set_event_item, only: %i[ show edit update destroy ]

  # GET /event_items/new
  def new
    @event_item = EventItem.new
  end

  # GET /event_items/1/edit
  def edit
  end

  # POST /event_items or /event_items.json
  def create
    @event_item = @event.event_items.new(event_item_params)

    respond_to do |format|
      if @event_item.save
        format.html { redirect_to event_url(@event), notice: "Event item was successfully created." }
        format.json { render :show, status: :created, location: @event_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_items/1 or /event_items/1.json
  def update
    respond_to do |format|
      if @event_item.update(event_item_params)
        format.html { redirect_to event_url(@event), notice: "Event item was successfully updated." }
        format.json { render :show, status: :ok, location: @event_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @event_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_items/1 or /event_items/1.json
  def destroy
    @event_item.destroy

    respond_to do |format|
      format.html { redirect_to event_url(@event), notice: "Event item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:event_id])
    end 

    def set_event_item
      @event_item = EventItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_item_params
      params.require(:event_item).permit(:name, :time, :event_id)
    end
end
