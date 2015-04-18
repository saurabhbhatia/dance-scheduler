class TeamController < ApplicationController
  def index
  	@instructors = Instructor.order('created_at ASC')
  end
end
