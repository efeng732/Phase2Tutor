class ReviewsController < ApplicationController

    def new 
        @errors = flash[:errors]
        @review = Review.new
    end 

    def create 
        @review = Review.create(review_params)
        if @review.valid?
            redirect_to tutor_path(@review.tutor_id)
        else 
            flash[:errors] = @review.errors.full_messages
            redirect_to new_review_path
        end 
    end 




    private 

    def review_params 
        params.require(:review).permit(:review, :rating, :tutor_id, :student_id)
    end 

end