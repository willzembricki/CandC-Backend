class ArrestRecordsController < ApplicationController
  before_action :set_arrest_record, only: [:show, :update, :destroy]

  # GET /arrest_records
  def index
    @arrest_records = ArrestRecord.all

    render json: @arrest_records
  end

  # GET /arrest_records/1
  def show
    render json: @arrest_record
  end

  # POST /arrest_records
  def create
    @arrest_record = ArrestRecord.new(arrest_record_params)

    if @arrest_record.save
      render json: @arrest_record, status: :created, location: @arrest_record
    else
      render json: @arrest_record.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /arrest_records/1
  def update
    if @arrest_record.update(arrest_record_params)
      render json: @arrest_record
    else
      render json: @arrest_record.errors, status: :unprocessable_entity
    end
  end

  # DELETE /arrest_records/1
  def destroy
    @arrest_record.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arrest_record
      @arrest_record = ArrestRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def arrest_record_params
      params.require(:arrest_record).permit(:state_id, :offender_record_id, :year)
    end
end
