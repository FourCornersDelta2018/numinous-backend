class LangAttributesController < ApplicationController
  before_action :set_lang_attribute, only: [:show, :update, :destroy]

  # GET /lang_attributes
  # GET /lang_attributes.json
  def index
    @lang_attributes = LangAttribute.all
  end

  # GET /lang_attributes/1
  # GET /lang_attributes/1.json
  def show
  end

  # POST /lang_attributes
  # POST /lang_attributes.json
  def create
    @lang_attribute = LangAttribute.new(lang_attribute_params)

    if @lang_attribute.save
      render :show, status: :created, location: @lang_attribute
    else
      render json: @lang_attribute.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lang_attributes/1
  # PATCH/PUT /lang_attributes/1.json
  def update
    if @lang_attribute.update(lang_attribute_params)
      render :show, status: :ok, location: @lang_attribute
    else
      render json: @lang_attribute.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lang_attributes/1
  # DELETE /lang_attributes/1.json
  def destroy
    @lang_attribute.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lang_attribute
      @lang_attribute = LangAttribute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lang_attribute_params
      params.require(:lang_attribute).permit(:language)
    end
end
