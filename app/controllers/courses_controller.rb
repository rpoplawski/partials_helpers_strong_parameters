class CoursesController < ApplicationController
  def index
    course = Course.all
    render template: 'courses/index.html.erb', locals: { course_names: course }
  end

  def show
    course_name = Course.find(params[:id])
    render template: 'course_names/show.html.erb', locals: { course_name: course_name }
  end
end
