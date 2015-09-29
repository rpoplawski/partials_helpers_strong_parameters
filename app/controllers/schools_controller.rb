class SchoolsController < ApplicationController
def index
    page  = (params[:page]  ||  0).to_i
    course_names = Course_name.limit(25).offset(page * 10)
    render locals: { course_names: course_names, page: page }
  end

  def show
    render locals: {
      school_name: get_school_name,
      course_name: Course_name.find(params[:id])
    }
  end

  def new
    render locals: {
      school_name: get_school_name,
      course_name: Course_name.new
    }
  end

  def edit
    render locals: {
      school_name: School_name.find(params[:school_id]),
      course_name: Course_name.find(params[:id])
    }
  end

  def create
    school_name = get_school_name
    course_name = Course_name.new(course_name_params)
    course_name.school_id = school.id
    if course_name.save
      redirect_to user_course_name_path(school_name, course_name)
    else
      render :new, locals: {
        school_name: school_name,
        course_name: course_name
      }
    end
  end
