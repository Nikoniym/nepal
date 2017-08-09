ActiveAdmin.register Feadback do
  actions :all, :except => [:show]
  permit_params :name, :title, :avatar, :description, :publish, :delete_avatar, :created_at
  config.sort_order = 'created_at_desc'
  jcropable

  index do
    column :name
    column :title
    column :avatar do |feadback|
      image_tag feadback.avatar.url(:thumb)
    end
    column :description
    column :publish

    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :title
      f.input :avatar, as: :jcropable,  jcrop_options: {aspectRatio: 1, showDimensions: true}
      if (f.object.avatar.present?)
        f.input :delete_avatar, :as=> :boolean, :required => false, :label => 'Remove image'
      end
      f.input :description
      f.input :created_at
      f.input :publish
    end
    f.actions
  end
end