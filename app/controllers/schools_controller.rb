class SchoolsController < ApplicationController
  def index
    school = School.all
    render template: 'schools/index.html.erb', locals: { school_names: school }
  end

  def show
    school_name = School.find(params[:id])
    render template: 'schools/show.html.erb', locals: { school: school_name }
  end
end

#   def show
#     render locals: {
#       school_name: get_school_name,
#       course_name: Course.find(params[:id])
#     }
#   end

#   def new
#     render locals: {
#       school_name: get_school_name,
#       course_name: Course.new
#     }
#   end

#   def edit
#     render locals: {
#       school_name: School.find(params[:school_id]),
#       course_name: Course.find(params[:id])
#     }
#   end

#   def create
#     school_name = get_school_name
#     course_name = Course.new(course_name_params)
#     course_name.school_id = school.id
#     if course_name.save
#       redirect_to user_course_name_path(school_name, course_name)
#     else
#       render :new, locals: {
#         school_name: school_name,
#         course_name: course_name
#       }
#     end
#   end

# def update
#     school_name = get_school_name
#     course_name  = Course.find(params[:id])
#     course_name.update(course_name_params)
#     if course_name.save
#       redirect_to school_name_course_name_path(school_name, course_name)
#     else
#       render :edit, locals: {
#         course_name: course_name,
#         school_name: school_name
#       }
#     end
#   end

#   def destroy
#     if school_name.exists?(params[:id])
#       school_name.destroy(params[:id])
#     end
#     redirect_to course_name_path(params[:course_id]) #redirect to wits index after destroy
#   end

#   private

#   def get_course_name
#     Course.find(params[:course_id])
#   end

#   #def school_name_params
#   #  params.require(:school_name).permit(:message, :published)
#   #end
# end
