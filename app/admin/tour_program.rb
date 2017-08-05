ActiveAdmin.register TourProgram do

  actions :all, :except => [:show]
  permit_params :image, :position, :name, :description
  config.sort_order = 'position_asc'

  index do
    column :image do |banner|
      image_tag banner.image.url(:thumb)
    end
    column :position
    column :name
    column :description
    actions
  end

  form do |f|
    f.inputs do
      f.input :image
      f.input :position
      f.input :name
      f.input :description
      f.actions
    end
  end
end
