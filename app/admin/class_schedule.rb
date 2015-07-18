ActiveAdmin.register ClassSchedule do
  form html: { multipart: true } do |f|
    f.inputs do
      f.input :title, label: "title"
      f.input :date, as: :datepicker, label: "Date"
      f.input :spots, as: :number, label: "Spots"
      f.input :price,label: "Price"
      f.input :detail, as: :ckeditor, label: "Details", toolbar: 'mini'
      f.input :start_time, as: :datetime_select, label: "Start Time", start_year: Date.today.year
      f.input :end_time, as: :datetime_select, label: "End Time", start_year: Date.today.year
      f.input :instructor_id, as: :select, collection: Instructor.pluck(:name, :id), label: "Instructor"
      f.input :status, as: :select, collection: ClassSchedule.statuses.keys, label: "Status"
    end
    f.actions
  end

  permit_params :title, :date, :detail, :spots, :start_time, :end_time, :instructor_id, :status, :price
end
