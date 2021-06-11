class UserOffenderRecordsController < ApplicationController
  before_action :set_user_offender_record, only: [:show, :update, :destroy]

  # GET /user_offender_records
  def index
    @user_offender_records = UserOffenderRecord.all

    render json: @user_offender_records
  end

  # GET /user_offender_records/1
  def show
    render json: @user_offender_record
  end

  # POST /user_offender_records
  def create
    @user_offender_record = UserOffenderRecord.new(user_offender_record_params)

    if @user_offender_record.save
      render json: @user_offender_record, status: :created, location: @user_offender_record
    else
      render json: @user_offender_record.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_offender_records/1
  def update
    if @user_offender_record.update(user_offender_record_params)
      render json: @user_offender_record
    else
      render json: @user_offender_record.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_offender_records/1
  def destroy
    @user_offender_record.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_offender_record
      @user_offender_record = UserOffenderRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_offender_record_params
      params.require(:user_offender_record).permit(:user_id, :offender_record_id)
    end
end
