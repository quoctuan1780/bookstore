ActiveAdmin.register Sach do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :tensach, :mota, :giaban, :hinhanh, :theloai_id
  controller do
    def new
      @sach = Sach.new
      super
    end

    def create
      @theloai = Theloai.all
      @sach = Sach.new(params.require(:sach).permit(:tensach, :mota, :giaban, :hinhanh, :theloai_id))
      super
    end

    def edit
      @sach = Sach.find params[:id]
      super
    end

    def show
      @sach = Sach.find params[:id]
      super
    end

    def update
      @sach = Sach.find params[:id]
      super
    end
  end
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
