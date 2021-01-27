class StudentInbox < ApplicationRecord
    belongs_to :student
    belongs_to :tutor 

    validates :message, presence: true, uniqueness: true, length: {minimum: 5, maximum: 300}
end 