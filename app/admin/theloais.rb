ActiveAdmin.register Theloai do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :tentl, sach_ids: []  
  filter :saches, label: "Sách", :as => :select, :collection => Sach.all.collect {|s| [s.tensach, s.id] }
  filter :tentl, label: "Tên thể loại" 
  index title: "Thể loại"
  form :title => 'Thêm thể loại' do |f|
    f.input :tentl, label: "Tên thể loại", :input_html => { :class => 'form-control'}
    f.actions
  end 
  controller do
    def new
      @theloai = Theloai.new
      super
    end

    def create
      @theloai = Theloai.new(params.require(:theloai).permit(:tentl))
      super
    end

    def edit
      @theloai = Theloai.find params[:id]
      super
    end

    def show
      @theloai = Theloai.find params[:id]
      super
    end

    def update
      @the_loai = Theloai.find params[:id]
      super
    end
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
