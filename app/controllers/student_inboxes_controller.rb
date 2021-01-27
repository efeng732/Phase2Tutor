class StudentInboxesController < ApplicationController
    def new 
        @errors = flash[:errors]
        @student_inbox = StudentInbox.new
    end 

    def create 
        @student_inbox = StudentInbox.create(student_inbox_params)
        if @student_inbox.valid?
            redirect_to student_path(@student_inbox.student_id)
        else  
            flash[:errors] = @student_inbox.errors.full_messages 
            redirect_to new_student_inbox_path
        end 
    end 




    private 
    
    def student_inbox_params 
        params.require(:student_inbox).permit(:message, :tutor_id, :student_id)
    end
     
end