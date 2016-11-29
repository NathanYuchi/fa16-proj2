class CoursesController < ApplicationController
  def view
  end

  def index
    @courses = Course.all
  end
end
