ActiveAdmin.register Stream do
  permit_params :fb_id, :page_id, :story, :archived

  index do
    selectable_column
    id_column
    column :fb_id
    column :page
    column :story
    column :archived
    actions
  end

  filter :fb_id
  filter :page

  form do |f|
    f.inputs do
      f.input :fb_id
      f.input :story
      f.input :page
      f.input :archived
    end
    f.actions
  end
end


