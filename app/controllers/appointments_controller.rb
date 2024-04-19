class AppointmentsController < ApplicationController
  def create
    @doctor = Doctor.find(params[:doctor_id])
    @availability = @doctor.available_on(params[:date])

    if @availability && @availability.remaining_slots > 0
      @appointment = @doctor.appointments.build(appointment_params)
      if @appointment.save
        render json: @appointment, status: :created
      else
        render json: @appointment.errors, status: :unprocessable_entity
      end
    else
      render json: { error: 'Doctor not available on this date or no slots available' }, status: :unprocessable_entity
    end
  end

  def show 
    @appointments = Appointment.all 
    render json: @appointments 

  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :time, :patient_name)
  end
end