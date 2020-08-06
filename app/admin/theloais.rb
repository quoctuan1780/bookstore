ActiveAdmin.register Theloai do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :tentl
  filter :tentl
  form do |f|
      f.input :tentl
  end
  
  #
  # or
  #
  # permit_params do
  #   permitted = [:tentl]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
