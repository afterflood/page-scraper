ActiveAdmin.register Page do
  permit_params :message, :page_id

  index do
    selectable_column
    id_column
    column :message
    column :page_name
    column :created_at
    actions
  end

  filter :message
  filter :page_name
end
