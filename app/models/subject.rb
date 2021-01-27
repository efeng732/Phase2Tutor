class Subject < ApplicationRecord
    has_many :student_subjects 
    has_many :tutor_subjects
    has_many :students, through: :student_subjects
    has_many :tutors, through: :tutor_subjects
end 