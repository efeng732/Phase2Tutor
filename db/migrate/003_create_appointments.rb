class CreateAppointments < ActiveRecord::Migration[6.0]
    def change 
        create_table :appointments do |t| 
            t.datetime :time 
            t.integer :tutor_id
            t.integer :student_id
        end 
    end 
end 