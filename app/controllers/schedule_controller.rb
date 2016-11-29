class ScheduleController < ApplicationController
  def view

  end

  def add
    @titles = Array.new
    Course.all.each do |course|
      @titles.push(course.title)
    end
  end
end
