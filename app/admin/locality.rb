ActiveAdmin.register Locality do

  permit_params :name, :city_id, :state_id

  filter :name
  filter :city

  form do |f|
    f.inputs do
      f.input :name
      f.input :city
    end
    f.actions
  end
end
