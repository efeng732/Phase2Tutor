class StudentsController < ApplicationController
    before_action :get_student, only: [:edit, :update, :destroy]
    skip_before_action :authorized_to_see_page, only: [:login, :handle_login, :new, :create]



    def login 
        @error = flash[:error]
    end 

    def handle_login
        @student = Student.find_by(first_name: params[:first_name])
        if @student && @student.authenticate(params[:password])
            session[:student_id] = @student.id
            redirect_to tutors_path
        else  
            flash[:error] = "Incorrect login info"
            redirect_to login_path
        end 


    end 

    def logout 
        session[:student_id] = nil 
        redirect_to login_path
    end 


    


    
    
    def index 
        @students = Student.all
    end 

    def new 
        @errors = flash[:errors]
        @student = Student.new
    end 

    def create 
        @student = Student.create(student_params)
        if @student.valid?
            session[:student_id] = @student.id
            redirect_to tutors_path
        else
            flash[:errors] = @student.errors.full_messages
            redirect_to new_student_path 
        end
    end 


    def show 
        @student = Student.find(params[:id])
        if @student !=@current_student 
            flash[:error] = "You can only view your own profile!"
            redirect_to student_path(@current_student)
        end 
    end 

    def edit 
        @student = @current_student
    end 

    def update 
        @student.update(student_params)
        redirect_to student_path(@student)
    end 

    def destroy 
        @student.destroy 
        redirect_to students_path 
    end 

    


    private 

    def get_student 
        @student = Student.find(params[:id])
    end 

    def student_params 
        params.require(:student).permit(:first_name, :last_name, :age, :bio, :password)
    end 
end 