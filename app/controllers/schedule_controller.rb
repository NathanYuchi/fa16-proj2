class ScheduleController < ApplicationController
  def viewAll
    @schedules = Schedule.where(user_id: current_user.id)
  end

	def view
    @id = params[:id]
    @schedule = Schedule.where(id: @id).first
    @name = @schedule.name
    @fr1 = @schedule.fr1
    @fr2 = @schedule.fr2
    @so1 = @schedule.so1
    @so2 = @schedule.so2
    @ju1 = @schedule.ju1
    @ju2 = @schedule.ju2
    @se1 = @schedule.se1
    @se2 = @schedule.se2
    @coursetemp = @fr1 + @fr2 + @so1 + @so2 + @ju1 + @ju2 + @se1 + @se2
    @courses = Array.new
    @coursetemp.each do |course|
      @courses.push(Course.where(title: course))
    end

  end

 	def index
 	end

	def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new
    @schedule.user_id = current_user.id
    @schedule.name = params[:schedule][:name]
    @schedule.save
    redirect_to schedule_viewall_path
  end

  def add
    @id = params[:id]
    @courses = Course.all
    @titles = Array.new
    @courses.each do |course|
      @titles.push(course.title.to_s)
    end
  end

  def addCourse
    @title = params[:course][:title]
    @course = Course.where(title: @title).first
    @term = params[:course][:term]
    @id = params[:course][:id]
    @schedule = Schedule.where(id: @id).first
    if @term == "fr1"
      @schedule.fr1.push(@course)
    elsif @term == 'fr2'
      @schedule.fr2.push(@course)
    elsif @term == 'so1'
      @schedule.so1.push(@course)
    elsif @term == 'so2'
      @schedule.so2.push(@course)
    elsif @term == 'ju1'
      @schedule.ju1.push(@course)
    elsif @term == 'ju2'
      @schedule.ju2.push(@course)
    elsif @term == 'se1'
      @schedule.se1.push(@course)
    elsif @term == 'se2'
      @schedule.se2.push(@course)
    end
    @schedule.save
    redirect_to schedule_view_path(id: @id)


  end


  def deleteCourse
    @title = params[:title]
    @id = params[:id]
    @course = Course.where(title: @title).first
    @schedule = Schedule.where(id: @id).first
    @schedule.fr1.delete(@course)
    @schedule.fr2.delete(@course)
    @schedule.so1.delete(@course)
    @schedule.so2.delete(@course)
    @schedule.ju1.delete(@course)
    @schedule.ju2.delete(@course)
    @schedule.se1.delete(@course)
    @schedule.se2.delete(@course)
    @schedule.save
    redirect_to schedule_view_path(id: @id)
  end

	def delete
	  	@schedule = Schedule.where(id: params[:id])
	  	@schedule.delete_all
      redirect_to schedule_viewall_path
  	end
end
