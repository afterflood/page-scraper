ActiveAdmin.register Message do
  permit_params :name, :url

  index do
    selectable_column
    id_column
    column :name
    column :url
    column :created_at
    actions
  end

  filter :name
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :url
    end
    f.actions
  end

end
