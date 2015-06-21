ActiveAdmin.register Attendee do
  form html: { multipart: true } do |f|
    f.inputs do
      f.input :name, label: "Name"
      f.input :email, label: "Email"
      f.input :age, label: "Age"
      f.input :message, as: :ckeditor, label: "Message"
      f.input :class_schedule_id, as: :radio, collection: ClassSchedule.pluck(:title, :id), label: "Class Schedule"
    end
    f.actions
  end

  permit_params :name, :email, :age, :class_schedule_id
end
