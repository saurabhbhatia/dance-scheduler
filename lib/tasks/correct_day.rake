namespace :correct_day do
  desc "correct day of week"
  task number: [:environment] do
    ClassSchedule.all.each do |schedule|
      case schedule.day
      when "sunday"
        schedule.day = 6
        schedule.save!
      when "monday"
        schedule.day = 0
      when "tuesday"
        schedule.day = 1
        schedule.save!
      when "wednesday"
        schedule.day = 2
        schedule.save!
      when "thursday"
        schedule.day = 3
        schedule.save!
      when "friday"
        schedule.day = 4
        schedule.save!
      when "saturday"
        schedule.day = 5
        schedule.save!
      end
    end
  end
end