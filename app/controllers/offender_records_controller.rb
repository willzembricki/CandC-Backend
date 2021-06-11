class OffenderRecordsController < ApplicationController
  before_action :set_offender_record, only: [:show, :update, :destroy]

  # GET /offender_records
  def index
    @offender_records = OffenderRecord.all

    render json: @offender_records
  end

  # GET /offender_records/1
  def show
    render json: @offender_record
  end

  # POST /offender_records
  def create
    @offender_record = OffenderRecord.new(offender_record_params)

    if @offender_record.save
      render json: @offender_record, status: :created, location: @offender_record
    else
      render json: @offender_record.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /offender_records/1
  def update
    if @offender_record.update(offender_record_params)
      render json: @offender_record
    else
      render json: @offender_record.errors, status: :unprocessable_entity
    end
  end

  # DELETE /offender_records/1
  def destroy
    @offender_record.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offender_record
      @offender_record = OffenderRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def offender_record_params
      params.require(:offender_record).permit(:total_offenders, :malePopO, :femalePopO, :asianPopO, :native_hawaiianO, :blackO, :american_indianO, :unidentifiedO, :whiteO, :year)
    end
end
