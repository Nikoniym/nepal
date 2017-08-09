ActiveAdmin.register Banner do
  actions :all, :except => [:show]
  permit_params :image, :position
  config.sort_order = 'position'
  jcropable

  index do
    column :image do |banner|
      image_tag banner.image.url(:thumb)
    end
    column :position
    actions
  end

  form do |f|
    f.inputs do
      f.input :image, as: :jcropable,  jcrop_options: {aspectRatio: 19.2/6.8, showDimensions: true}
      f.input :position
      f.actions
    end
  end
end
