class StatesController < ApplicationController
  before_action :set_state, only: [:show, :update, :destroy]

  # GET /states
  def index
    @states = State.all

    render json: @states
  end
def find_me_state
  render json: State.find_by(abbreviation: params[:abbreviation])
end
  # GET /states/1
  def show
    render json: @state
  end

  # POST /states
  def create
    @state = State.new(state_params)

    if @state.save
      render json: @state, status: :created, location: @state
    else
      render json: @state.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /states/1
  def update
    if @state.update(state_params)
      render json: @state
    else
      render json: @state.errors, status: :unprocessable_entity
    end
  end

  # DELETE /states/1
  def destroy
    @state.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state
      @state = State.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def state_params
      params.require(:state).permit(:name, :abbreviation, :population, :malePop, :femalePop, :asianPop, :native_hawaiian, :black, :american_indian, :unidentified, :white, :state_id)
    end
end
