class CreateTutorSubjects < ActiveRecord::Migration[6.0]
    def change 
        create_table :tutor_subjects do |t|
            t.integer :tutor_id 
            t.integer :subject_id 
        
        end 
    end 
end 