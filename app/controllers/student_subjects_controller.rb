class StudentSubjectsController < ApplicationController
    def new 
        @errors = flash[:errors]
        @student_subject = StudentSubject.new 
    end 

    def create 
        @student_subject = StudentSubject.create(student_subject_params)
        if @student_subject.valid?
        redirect_to student_path(@student_subject.student_id)
        else 
            flash[:errors] = @student_subject.errors.full_messages
            redirect_to new_student_subject_path
        end 
    end 




    private 

    def student_subject_params 
        params.require(:student_subject).permit(:subject_id, :student_id)
    end 
end 