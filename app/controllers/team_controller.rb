class TeamController < ApplicationController
  def index
  	@instructors = Instructor.all
  end
end
