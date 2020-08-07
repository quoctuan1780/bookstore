ActiveAdmin.register Sach do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :tensach, :mota, :giaban, :hinhanh, :theloai_id
  filter :theloai, label: "Thể loại", :as => :select, :collection => Theloai.all.collect {|tl| [tl.tentl, tl.id] }
  filter :tensach, label: "Tên sách"
  filter :giaban, label: "Giá bán"
  form title: 'Thêm sách' do |f|
    f.input :theloai, label: "Thể loại", :as => :select, :collection => Theloai.all.collect {|tl| [tl.tentl, tl.id] }, :input_html => { :class => 'form-control'}
    f.input :tensach,label: "Tên sách", :input_html => { :class => 'form-control'}
    f.input :mota, as: :text, label: "Mô tả", :input_html => { :class => 'form-control'}
    f.input :giaban, label: "Giá bán", :input_html => { :class => 'form-control'}
    f.input :hinhanh, as: :file, label: "Hình ảnh", :input_html => { :class => 'form-control'}
    f.actions
  end 
  index title: "Sách"
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
