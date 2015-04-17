class InstructorsController < ApplicationController
  before_action :set_instructor, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  def new
    @instructor = Instructor.new
  end

  def index
    @instructors = Instructor.order('created_at DESC')
  end

  def show
  end

  def create
    @instructor = Instructor.new(instructor_params)

    respond_to do |format|
      if @instructor.save
        format.html { redirect_to @instructor, notice: 'Instructor was successfully created.' }
        format.json { render :show, status: :created, location: @instructor }
      else
        format.html { render :new }
        format.json { render json: @instructor.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @instructor.update(instructor_params)
        format.html { redirect_to @instructor, notice: 'Instructor was successfully updated.' }
        format.json { render :show, status: :ok, location: @instructor }
      else
        format.html { render :edit }
        format.json { render json: @instructor.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @instructor.destroy
    respond_to do |format|
      format.html { redirect_to instructors_url, notice: 'Instructor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private 

  def set_instructor
    @instructor = Instructor.find(params[:id])
  end

  def instructor_params
    params.require(:instructor).permit(:name, :title, :bio, :image_path)
  end
end
