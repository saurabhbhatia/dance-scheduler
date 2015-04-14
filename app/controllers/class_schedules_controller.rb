class ClassSchedulesController < ApplicationController
  def new
  end

  def index
  end

  def show
  end

  def edit
  end

  def destroy
  end

  private 

  def class_schedule_params
    params.require(:class_schedule)
  end
end
