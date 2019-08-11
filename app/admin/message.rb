ActiveAdmin.register Message do
  permit_params :message, :page_id, :url, :archived

  index do
    selectable_column
    id_column
    column :message
    column :page
    column :created_at
    actions
  end

  filter :message
  filter :page
  filter :archived

  form do |f|
    f.inputs do
      f.input :message
      f.input :page
      f.input :url
      f.input :archived
    end
    f.actions
  end
end