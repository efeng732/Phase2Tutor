class AppointmentsController < ApplicationController
    def new 
        @errors = flash[:errors]
        @appointment = Appointment.new 
    end 

    def create 
        @appointment = Appointment.new(appointment_params)
        if @appointment.save 
            redirect_to tutor_path(@appointment.tutor_id)
        else 
            flash[:errors] = @appointment.errors.full_messages 
            redirect_to new_appointment_path
        end 
    end 




    private 

    def appointment_params 
        params.require(:appointment).permit(:time, :tutor_id, :student_id)

    end 

end