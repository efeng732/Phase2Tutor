class CreateStudentInboxes < ActiveRecord::Migration[6.0]
    def change 
        create_table :student_inboxes do |t| 
            t.string :message 
            t.integer :tutor_id 
            t.integer :student_id
        end 
    end 
end 