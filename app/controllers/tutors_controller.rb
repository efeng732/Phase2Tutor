class TutorsController < ApplicationController
    before_action :get_tutor, only: [:show, :edit, :update]

    def edit 
    end 

    def update
    end 

    def index 
        @tutors = Tutor.all
    end 
    
    def show 
    end 




    private 

    def get_tutor 
        @tutor = Tutor.find(params[:id])
    end 

    def tutor_params 
        params.require(:tutor).permit(:first_name, :last_name, :hourly, :years, :time_start, :time_end, :bio, :education, :password)
    end 
end 