class ClassSchedulesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  def new

  end

  def index
    @class_schedules = ClassSchedule.order('created_at DESC')
  end

  def show
  end

  def edit
  end

  def destroy
  end

  private 

  def class_schedule_params
    params.require(:class_schedule).permit(:title, :date, :instructor_id, :status, :spots, :start_time, :end_time)
  end
end