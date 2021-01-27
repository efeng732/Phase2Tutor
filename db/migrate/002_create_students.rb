class CreateStudents < ActiveRecord::Migration[6.0]
    def change 
        create_table :students do |t|
            t.string :first_name
            t.string :last_name
            t.string :bio 
            t.integer :age 
            t.string :password_digest
        end 
    end 

end 