class StudentsController < ApplicationController
    def index 
        students = Student.all
        render json: students
    end

    def grades 
        students = Student.all
        render json: students.order(grade: :desc)
    end

    def highest_grade
        render json: Student.all.order(:grade).last
    end
end
