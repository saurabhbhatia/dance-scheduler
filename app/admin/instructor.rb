ActiveAdmin.register Instructor do
  form html: { multipart: true } do |f|
    f.inputs do
      f.input :title, label: "Title"
      f.input :name, label: "Name"
      f.input :bio, as: :ckeditor, label: "Bio"
      f.input :image_path, label: "Image Path"
      f.input :status, as: :select, collection: Instructor.statuses.keys, label: "Status"
    end
    f.actions
  end

  permit_params :title, :name, :bio, :image_path, :status
end
