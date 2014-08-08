class LinePropertyItemsController < ApplicationController
  before_action :set_line_property_item, only: [:show, :edit, :update, :destroy]

  # GET /line_property_items
  # GET /line_property_items.json
  def index
    @line_property_items = LinePropertyItem.all
  end

  # GET /line_property_items/1
  # GET /line_property_items/1.json
  def show
  end

  # GET /line_property_items/new
  def new
    @line_property_item = LinePropertyItem.new
  end

  # GET /line_property_items/1/edit
  def edit
  end

  # POST /line_property_items
  # POST /line_property_items.json
  def create
    @line_property_item = LinePropertyItem.new(line_property_item_params)

    respond_to do |format|
      if @line_property_item.save
        format.html { redirect_to @line_property_item, notice: 'Line property item was successfully created.' }
        format.json { render :show, status: :created, location: @line_property_item }
      else
        format.html { render :new }
        format.json { render json: @line_property_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /line_property_items/1
  # PATCH/PUT /line_property_items/1.json
  def update
    respond_to do |format|
      if @line_property_item.update(line_property_item_params)
        format.html { redirect_to @line_property_item, notice: 'Line property item was successfully updated.' }
        format.json { render :show, status: :ok, location: @line_property_item }
      else
        format.html { render :edit }
        format.json { render json: @line_property_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_property_items/1
  # DELETE /line_property_items/1.json
  def destroy
    @line_property_item.destroy
    respond_to do |format|
      format.html { redirect_to line_property_items_url, notice: 'Line property item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_property_item
      @line_property_item = LinePropertyItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_property_item_params
      params.require(:line_property_item).permit(:name, :line_property)
    end
end
