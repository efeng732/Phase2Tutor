class Appointment < ApplicationRecord
    belongs_to :student
    belongs_to :tutor

    validate :appointment_validator 
    
    
    def appointment_validator 
        @tutor = Tutor.find(self.tutor_id)
        my_appointments = @tutor.appointments 
        
        month_match = my_appointments.select { |appointment| appointment.time.month == self.time.month }
        day_match = my_appointments.select {|appointment| appointment.time.day == self.time.day}
        hour_match = my_appointments.select {|appointment| appointment.time.hour == self.time.hour}
        
        #byebug 

        if hour_match.length > 0 
            self.errors.add(:appointment, " time slot is already taken with this tutor")
        end 


    end 

end 