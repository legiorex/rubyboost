class CoursesController < ApplicationController

    before_action :find_course, only: [:edit, :update, :destroy]

def index
    @courses = Course.all.page(params[:page]).per(1)
end

def new
    @course = Course.new
end

def create
    @course = Course.new course_params

    if @course.save
        redirect_to courses_path
    else
        render :new
    end
end

def edit
end

def update

    if @course.update course_params
        redirect_to courses_path
    else
        render :edit
    end
end

def destroy
    @course.destroy

    redirect_to courses_path
end


private

def course_params
    params.require(:course).permit(:title, :image)

end

def find_course
    @course = Course.find(params[:id])
end



end
