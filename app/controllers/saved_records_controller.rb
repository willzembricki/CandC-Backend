class SavedRecordsController < ApplicationController
  before_action :set_saved_record, only: [:show, :update, :destroy]

  # GET /saved_records
  def index
    @saved_records = SavedRecord.all

    render json: @saved_records
  end

  # GET /saved_records/1
  def show
    render json: @saved_record
  end

  # POST /saved_records
  def create
    @saved_record = SavedRecord.new(saved_record_params)

    if @saved_record.save
      render json: @saved_record, status: :created, location: @saved_record
    else
      render json: @saved_record.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /saved_records/1
  def update
    if @saved_record.update(saved_record_params)
      render json: @saved_record
    else
      render json: @saved_record.errors, status: :unprocessable_entity
    end
  end

  # DELETE /saved_records/1
  def destroy
    @saved_record.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saved_record
      @saved_record = SavedRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def saved_record_params
      params.require(:saved_record).permit(:user_id, :offender_record_id)
    end
end
