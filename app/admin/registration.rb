ActiveAdmin.register Registration do
  actions :all, :except => [:show]
  permit_params :name, :phone, :email, :confirmation

  index do
    column :name
    column :phone
    column :email
    column :confirmation

    actions
  end
end