class GeoAttributesController < ApplicationController
  before_action :set_geo_attribute, only: [:show, :update, :destroy]

  # GET /geo_attributes
  # GET /geo_attributes.json
  def index
    @geo_attributes = GeoAttribute.all
  end

  # GET /geo_attributes/1
  # GET /geo_attributes/1.json
  def show
  end

  # POST /geo_attributes
  # POST /geo_attributes.json
  def create
    @geo_attribute = GeoAttribute.new(geo_attribute_params)

    if @geo_attribute.save
      render :show, status: :created, location: @geo_attribute
    else
      render json: @geo_attribute.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /geo_attributes/1
  # PATCH/PUT /geo_attributes/1.json
  def update
    if @geo_attribute.update(geo_attribute_params)
      render :show, status: :ok, location: @geo_attribute
    else
      render json: @geo_attribute.errors, status: :unprocessable_entity
    end
  end

  # DELETE /geo_attributes/1
  # DELETE /geo_attributes/1.json
  def destroy
    @geo_attribute.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_geo_attribute
      @geo_attribute = GeoAttribute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def geo_attribute_params
      params.require(:geo_attribute).permit(:geography)
    end
end
