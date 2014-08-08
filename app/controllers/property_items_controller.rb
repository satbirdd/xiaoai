class PropertyItemsController < ApplicationController
  before_action :set_property_item, only: [:show, :edit, :update, :destroy]

  # GET /property_items
  # GET /property_items.json
  def index
    @property_items = PropertyItem.all
  end

  # GET /property_items/1
  # GET /property_items/1.json
  def show
  end

  # GET /property_items/new
  def new
    @property_item = PropertyItem.new
  end

  # GET /property_items/1/edit
  def edit
  end

  # POST /property_items
  # POST /property_items.json
  def create
    @property_item = PropertyItem.new(property_item_params)

    respond_to do |format|
      if @property_item.save
        format.html { redirect_to @property_item, notice: 'Property item was successfully created.' }
        format.json { render :show, status: :created, location: @property_item }
      else
        format.html { render :new }
        format.json { render json: @property_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_items/1
  # PATCH/PUT /property_items/1.json
  def update
    respond_to do |format|
      if @property_item.update(property_item_params)
        format.html { redirect_to @property_item, notice: 'Property item was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_item }
      else
        format.html { render :edit }
        format.json { render json: @property_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_items/1
  # DELETE /property_items/1.json
  def destroy
    @property_item.destroy
    respond_to do |format|
      format.html { redirect_to property_items_url, notice: 'Property item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_item
      @property_item = PropertyItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_item_params
      params.require(:property_item).permit(:name)
    end
end
