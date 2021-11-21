class StudentController < ApplicationController
    def index
        student = Student.all
        render json: student
    end
    def grade
        student = Student.all.sort_by{ |student| student.grade }.reverse
        render json: student
    end
end
