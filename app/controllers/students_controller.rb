class StudentsController < ApplicationController
  def index
    student = Student.all
    render template: 'students/index.html.erb', locals: { student_names: student }
  end

  def show
    student_name = Student.find(params[:id])
    render template: 'students/show.html.erb', locals: { student_name: student_name }
  end
end
