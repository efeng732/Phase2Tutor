class Review < ApplicationRecord
    belongs_to :student 
    belongs_to :tutor 

    validates :review, presence: true, uniqueness: true, length: {minimum: 5, maximum:300}
    validates :rating, presence: true, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 10}

end 

