class StudentSubject < ApplicationRecord
    belongs_to :student
    belongs_to :subject 

    validates :subject_id, uniqueness: {scope: :student_id}
    
end 