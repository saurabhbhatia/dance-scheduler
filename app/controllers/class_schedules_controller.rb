class ClassSchedulesController < ApplicationController
  before_action :set_class_schedule, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  def new
    @class_schedule = ClassSchedule.new
  end

  def index
    @class_schedules = ClassSchedule.order('created_at DESC')
  end

  def show
  end

  def create
    @class_schedule = ClassSchedule.new(class_schedule_params)

    respond_to do |format|
      if @class_schedule.save
        format.html { redirect_to @class_schedule, notice: 'Class Schedule was successfully created.' }
        format.json { render :show, status: :created, location: @class_schedule }
      else
        format.html { render :new }
        format.json { render json: @class_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @class_schedule.update(class_schedule_params)
        format.html { redirect_to @class_schedule, notice: 'Class Schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @class_schedule }
      else
        format.html { render :edit }
        format.json { render json: @class_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @class_schedule.destroy
    respond_to do |format|
      format.html { redirect_to class_schedules_url, notice: 'Class Schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private 

  def set_class_schedule
    @class_schedule = ClassSchedule.find(params[:id])
  end

  def class_schedule_params
    params.require(:class_schedule).permit(:title, :date, :instructor_id, :status, :spots, :start_time, :end_time)
  end
end