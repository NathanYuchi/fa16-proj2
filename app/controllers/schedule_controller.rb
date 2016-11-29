class ScheduleController < ApplicationController
  	def view
  		@course = Course.where(:user_id => current_user)
  	
 	end

 	def index
   		@courses = Course.all
 	end

	def add
	  	@course = Course.where(id: params[:id])
	  	@course.update_all(:user_id => current_user)
	  	redirect_to schedule_view_path(:user_id => current_user)
  	end

	def delete
	  	@course = Course.where(id: params[:id])
	  	@course.delete_all
	  	redirect_to schedule_view_path(:user_id => current_user)
  	end
end
