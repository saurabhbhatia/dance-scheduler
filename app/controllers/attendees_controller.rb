class AttendeesController < ApplicationController

  def new
    @class_schedule = ClassSchedule.find(params[:class_schedule_id])
    @attendee = @class_schedule.attendees.new
    @price = @class_schedule.price * 100
  end

  def create
    @class_schedule = ClassSchedule.find(params[:class_schedule_id])
    @attendee = @class_schedule.attendees.new(attendee_params)
    respond_to do |format|
      if @attendee.save
        format.html { redirect_to class_schedules_path, notice: 'Attendee was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @attendee.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @attendee = Attendee.find(params[:id])
  end

  def update
    respond_to do |format|
      if @attendee.update(class_schedule_params)
        format.html { redirect_to @attendee, notice: 'Attendee was successfully updated.' }
        format.json { render :show, status: :ok, location: @attendee }
      else
        format.html { render :edit }
        format.json { render json: @attendee.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @attendee.destroy
    respond_to do |format|
      format.html { redirect_to attendees_url, notice: 'Attendee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def attendee_params
    params.require(:attendee).permit(:name, :email, :age, :class_schedule_id, :message)
  end
end
