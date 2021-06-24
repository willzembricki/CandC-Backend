class FavoriteStatesController < ApplicationController
  before_action :set_favorite_state, only: [:show, :update, :destroy]

  # GET /favorite_states
  def index
    @favorite_states = FavoriteState.all

    render json: @favorite_states
  end

  # GET /favorite_states/1
  def show
    render json: @favorite_state
  end

  # POST /favorite_states
  def create
    @favorite_state = FavoriteState.new(favorite_state_params)

    if @favorite_state.save
      render json: @favorite_state, status: :created, location: @favorite_state
    else
      render json: @favorite_state.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /favorite_states/1
  def update
    if @favorite_state.update(favorite_state_params)
      render json: @favorite_state
    else
      render json: @favorite_state.errors, status: :unprocessable_entity
    end
  end

  # DELETE /favorite_states/1
  def destroy
    @favorite_state.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_state
      @favorite_state = FavoriteState.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def favorite_state_params
      params.require(:favorite_state).permit(:state_id, :user_id)
    end
end
