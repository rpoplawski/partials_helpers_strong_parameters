class CoursesController < ApplicationController
  def index
    course_names = Course_name.all
    render template: 'course_name/index.html.erb', locals: { course_name: course_name }
end

  def show
    course_names = Course_name.find(params[:id])
    render template: 'course_name/show.html.erb', locals: { course_name: course_name }
  end
end
