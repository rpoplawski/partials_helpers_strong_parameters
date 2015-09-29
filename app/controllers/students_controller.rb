class StudentsController < ApplicationController
  def index
    students = Student.all
    render template: 'stuents/index.html.erb', locals: { student: students }
  end

  def show
    student = Student.find(params[:id])
    render template: 'students/show.html.erb', locals: { student: student }
  end
end
end
