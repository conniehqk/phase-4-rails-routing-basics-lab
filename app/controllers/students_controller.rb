class StudentController < ApplicationController
    def index
        student = Student.all
        render json: student
    end
    def grades
        student = Student.all.sort_by{ |student| student.grade }
        render json: student
    end
end
