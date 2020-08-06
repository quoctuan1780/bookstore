ActiveAdmin.register Sach do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :tensach, :mota, :giaban, :hinhanh, :theloai_id

  # index do
  #   selectable_column
  #   id_column
  #   column :tensach
  #   column :mota
  #   column :giaban
  #   column :theloai_id
  #   actions
  # end
  #
  # or
  #
  # permit_params do
  #   permitted = [:tensach, :mota, :giaban, :hinhanh, :theloai_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
