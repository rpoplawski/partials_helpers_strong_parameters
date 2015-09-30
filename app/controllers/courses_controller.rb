class CoursesController < ApplicationController
  def index
    course = Course.all
    render template: 'courses/index.html.erb', locals: { course_names: course }
  end

  def show
    courses = Course.find(params[:id])
    render template: '/courses/show.html.erb', locals: { courses: courses }
  end
end
