class CoursesController < ApplicationController
  def index
    course_names = Course_name.all
    render template: 'course_names/index.html.erb', locals: { course_names: course_names }
end

  def show
    course_name = Course_name.find(params[:id])
    render template: 'course_names/show.html.erb', locals: { course_name: course_name }
  end
end
