class TeachersController < ApplicationController
  def index
    teacher = Teacher.all
    render template: 'teachers/index.html.erb', locals: { teacher_names: teacher }
  end

  def show
    teacher_name = Teacher.find(params[:id])
    render template: 'teachers/show.html.erb', locals: { teacher_name: teacher_name }
  end
end
