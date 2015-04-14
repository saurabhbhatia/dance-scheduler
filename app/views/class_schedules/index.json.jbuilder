json.array!(@class_schedules) do |event|
  json.extract! class_schedule, :id, :title, :date, :instructor_id, :start_time, :end_time, :spots, :status
  json.url class_schedule_url(class_schedule, format: :json)
end
