ActiveAdmin.register Product do
  form html: { multipart: true } do |f|
    f.inputs do
      f.input :name, label: "Name"
      f.input :price,label: "Price"
      f.input :description, as: :ckeditor, label: "Description", toolbar: 'mini'
      f.input :status, as: :select, collection: Product.statuses.keys, label: "Status"
    end
    f.actions
  end

  permit_params :name, :description, :price, :status
end
