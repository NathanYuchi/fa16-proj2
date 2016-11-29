class ScheduleController < ApplicationController
  def view

  end

 def index
    @courses = Course.all
  end

def add
  	@course = Course.where(id: params[:id])
  	@course.update_all(:user_id => current_user)
  	#redirect_to "/"
end
end
