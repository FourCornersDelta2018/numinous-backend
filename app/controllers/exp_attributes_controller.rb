class ExpAttributesController < ApplicationController
  before_action :set_exp_attribute, only: [:show, :update, :destroy]

  # GET /exp_attributes
  # GET /exp_attributes.json
  def index
    @exp_attributes = ExpAttribute.all
  end

  # GET /exp_attributes/1
  # GET /exp_attributes/1.json
  def show
  end

  # POST /exp_attributes
  # POST /exp_attributes.json
  def create
    @exp_attribute = ExpAttribute.new(exp_attribute_params)

    if @exp_attribute.save
      render :show, status: :created, location: @exp_attribute
    else
      render json: @exp_attribute.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /exp_attributes/1
  # PATCH/PUT /exp_attributes/1.json
  def update
    if @exp_attribute.update(exp_attribute_params)
      render :show, status: :ok, location: @exp_attribute
    else
      render json: @exp_attribute.errors, status: :unprocessable_entity
    end
  end

  # DELETE /exp_attributes/1
  # DELETE /exp_attributes/1.json
  def destroy
    @exp_attribute.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exp_attribute
      @exp_attribute = ExpAttribute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exp_attribute_params
      params.require(:exp_attribute).permit(:experience)
    end
end
