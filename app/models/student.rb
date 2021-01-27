class Student < ApplicationRecord
    has_many :appointments, dependent: :destroy 
    has_many :tutors, through: :appointments
    has_many :reviews, dependent: :destroy
    has_many :student_inboxes 
    has_many :student_subjects, dependent: :destroy
    has_many :subjects, through: :student_subjects 

    has_secure_password

    def full_name 
        self.first_name + " " + self.last_name
    end 
    
    validates_uniqueness_of :first_name, scope: :last_name
    validates :age, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 5, less_than_or_equal_to: 95} 
    validates :bio, presence: true, length: {minimum: 5, maximum: 350}
    validates :password, presence: true 
    
end 

