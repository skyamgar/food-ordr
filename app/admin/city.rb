ActiveAdmin.register City do

  permit_params :name, :state_id

  filter :name
  filter :state

  form do |f|
    f.inputs do
      f.input :name
      f.input :state
    end
    f.actions
  end
end
