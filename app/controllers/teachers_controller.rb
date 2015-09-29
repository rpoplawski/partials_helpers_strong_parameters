class TeachersController < ApplicationControlteacer
  def index
    teachers = Teacher.all
    render template: 'teachers/index.html.erb', locals: { teachers: teachers }
  end

  def show
    teacher = Teacher.find(params[:id])
    render template: 'teachers/show.html.erb', locals: { teacher: teacher }
  end
end
