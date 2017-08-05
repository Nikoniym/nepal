ActiveAdmin.register Gallery do
  actions :all, :except => [:show]
  permit_params :image, :retreat

  index do
    column  :image do |image|
      image_tag image.image.url(:thumb)
    end
    column :retreat

    actions
  end

  form do |f|
    f.inputs do
      f.input  :image
      f.input :retreat
      f.actions
    end
  end

  action_item :only => :index do
    link_to "Мульти загрука", galleries_path
  end

end
