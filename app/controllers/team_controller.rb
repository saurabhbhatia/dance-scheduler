class TeamController < ApplicationController
  def index
  	@instructors = Instructor.order('created_at DESC')
  end
end
