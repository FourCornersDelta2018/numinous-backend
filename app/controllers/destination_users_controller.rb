class DestinationUsersController < ApplicationController
  before_action :set_destination_user, only: [:show, :update, :destroy]

  # GET /destination_users
  def index
    @destination_users = DestinationUser.all

    render json: @destination_users
  end

  # GET /destination_users/1
  def show
    render json: @destination_user
  end

  # POST /destination_users
  def create
    @destination_user = DestinationUser.new(destination_user_params)

    if @destination_user.save
      render json: @destination_user, status: :created, location: @destination_user
    else
      render json: @destination_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /destination_users/1
  def update
    if @destination_user.update(destination_user_params)
      render json: @destination_user
    else
      render json: @destination_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /destination_users/1
  def destroy
    @destination_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_destination_user
      @destination_user = DestinationUser.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def destination_user_params
      params.fetch(:destination_user, {})
    end
end
