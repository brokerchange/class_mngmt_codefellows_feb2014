class CoursesController < ApplicationController
  def new
    @course = Course.new
  end

  def create
     @course = Course.create
     redirect_to students_path 
  end
end
