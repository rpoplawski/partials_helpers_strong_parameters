class TeachersController < ApplicationControlteacer
  def index
    teachers = User.all
    render template: 'teachers/index.html.erb', locals: { teachers: teachers }
  end

  def show
    teacher = User.find(params[:id])
    render template: 'teachers/show.html.erb', locals: { teacher: teacher }
  end
end
