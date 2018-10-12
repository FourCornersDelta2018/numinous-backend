class DestinationUsersController < ApplicationController
  before_action :set_destination_user, only: [:show, :update, :destroy]

  # GET /destination_users
  def index
    @destination_users = DestinationUser.all

    render json: @destination_users
  end

  # # GET /destination_users/1

  def show
      destination_user = DestinationUser.where(user_id: params[:id])
      user_info = User.find(params[:id])
      destination_info = destination_user.map{|destination| destination.destination}
      all_user_info = {user_info: user_info, destination_user: destination_user, destination_info: destination_info}
      p user_info
      p destination_user

      render json: all_user_info#, methods: [:destination]
  end

  # DELETE /destination_users/1
  def destroy
    DestinationUser.destroy(DestinationUser.find_by_destination_id(params[:destination_id]).id)
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_destination_user
      @destination_user = DestinationUser.find_by_user_id(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def destination_user_params
      # params.fetch(:destination_user, {})
      params.require(:destination_user).permit(:user_id, :destination_id)
    end
end
