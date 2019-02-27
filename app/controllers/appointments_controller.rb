class AppointmentsController < ApplicationController
  before_action :set_physician
  

  def index
    @appointments = @physician.appointments.order(:date, :time)
  end


    def new
      @appointment = @physician.appointments.new
    end


  def create
    @appointment = @physician.appointments.new(appointment_params)
    if @appointment.save
      redirect_to physician_appointments_path(@physician)
    else
      render :new
    end
  end

  def destroy
    @physician.appointments.find(params[:id]).destroy
    redirect_to physician_appointments_path
  end

 private
   def set_physician
     @physician = Physician.find(params[:physician_id]) 
   end

   def appointment_params
     params.require(:appointment).permit(:name, :patient_id, :date, :time)
   end
end
