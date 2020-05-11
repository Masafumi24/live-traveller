class SchedulesController < ApplicationController
  
  def new
    schedule = Schedule.new
  end

  def create
    schedule = Schedule.new
    if schedule.save(schedule_params)
      redirect_to root_path
    else
      redirect_to new_schedule_path
    end
  end
end
