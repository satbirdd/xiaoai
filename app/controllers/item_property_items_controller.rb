class ItemPropertyItemsController < ApplicationController
  before_action :set_item_property_item, only: [:show, :edit, :update, :destroy]

  # GET /item_property_items
  # GET /item_property_items.json
  def index
    @item_property_items = ItemPropertyItem.all
  end

  # GET /item_property_items/1
  # GET /item_property_items/1.json
  def show
  end

  # GET /item_property_items/new
  def new
    @item_property_item = ItemPropertyItem.new
  end

  # GET /item_property_items/1/edit
  def edit
  end

  # POST /item_property_items
  # POST /item_property_items.json
  def create
    @item_property_item = ItemPropertyItem.new(item_property_item_params)

    respond_to do |format|
      if @item_property_item.save
        format.html { redirect_to @item_property_item, notice: 'Item property item was successfully created.' }
        format.json { render :show, status: :created, location: @item_property_item }
      else
        format.html { render :new }
        format.json { render json: @item_property_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_property_items/1
  # PATCH/PUT /item_property_items/1.json
  def update
    respond_to do |format|
      if @item_property_item.update(item_property_item_params)
        format.html { redirect_to @item_property_item, notice: 'Item property item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_property_item }
      else
        format.html { render :edit }
        format.json { render json: @item_property_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_property_items/1
  # DELETE /item_property_items/1.json
  def destroy
    @item_property_item.destroy
    respond_to do |format|
      format.html { redirect_to item_property_items_url, notice: 'Item property item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_property_item
      @item_property_item = ItemPropertyItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_property_item_params
      params.require(:item_property_item).permit(:property_item_id, :item_id)
    end
end
