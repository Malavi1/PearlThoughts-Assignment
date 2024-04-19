class AvailabilitiesController < ApplicationController
  def index
    @doctor = Doctor.find(params[:doctor_id])
    @availabilities = @doctor.availabilities
    render json: @availabilities
  end
end