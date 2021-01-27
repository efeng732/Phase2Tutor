class Tutor < ApplicationRecord
    has_many :appointments#, dependent: :destroy 
    has_many :students, through: :appointments
    has_many :tutor_subjects
    has_many :subjects, through: :tutor_subjects 
    has_many :reviews 
    has_many :student_inboxes 

    def full_name 
        self.first_name + " " + self.last_name
    end 
end 