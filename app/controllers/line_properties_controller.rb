class LinePropertiesController < ApplicationController
  before_action :set_category, only: [:index, :new, :create]
  before_action :set_line_property, only: [:show, :edit, :update, :destroy]

  # GET /line_properties
  # GET /line_properties.json
  def index
    @line_properties = @category.line_properties.all
  end

  # GET /line_properties/1
  # GET /line_properties/1.json
  def show
  end

  # GET /line_properties/new
  def new
    @line_property = @category.line_properties.build
  end

  # GET /line_properties/1/edit
  def edit
  end

  # POST /line_properties
  # POST /line_properties.json
  def create
    @line_property = @category.line_properties.build(line_property_params)

    respond_to do |format|
      if @line_property.save
        format.html { redirect_to @line_property, notice: 'Line property was successfully created.' }
        format.json { render :show, status: :created, location: @line_property }
      else
        format.html { render :new }
        format.json { render json: @line_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /line_properties/1
  # PATCH/PUT /line_properties/1.json
  def update
    respond_to do |format|
      if @line_property.update(line_property_params)
        format.html { redirect_to @line_property, notice: 'Line property was successfully updated.' }
        format.json { render :show, status: :ok, location: @line_property }
      else
        format.html { render :edit }
        format.json { render json: @line_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_properties/1
  # DELETE /line_properties/1.json
  def destroy
    @line_property.destroy
    respond_to do |format|
      format.html { redirect_to line_properties_url, notice: 'Line property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_property
      @line_property = LineProperty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_property_params
      params.require(:line_property).permit(:targetable_id, :targetable_type, :name,
        line_property_items_attributes: [:name])
    end

    def set_category
      @category = Category.find(params[:category_id])
    end
end
