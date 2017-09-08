ActiveAdmin.register FoodItem do

  permit_params :name, :description, :price

  filter :name
  filter :price

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :price
    end
    f.actions
  end
end
