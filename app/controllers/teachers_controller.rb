class TeachersController < ApplicationController
  def index
    teacher  = Teacher.all
    render template: 'teachers/index.html.erb', locals: { teacher_names: teacher }
  end

  def show
    teacher_names = Teacher.find(params[:id])
    render  locals: { teacher_names: teacher_names }
  end
end
