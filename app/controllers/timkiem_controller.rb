class TimkiemController < ApplicationController
  def index
    query = params[:query]
    if query.to_i == 0
      @sach = Sach.select("*").joins(:theloai).where("tensach LIKE '%#{query}%' OR tentl LIKE '%#{query}%'").paginate(:page => params[:page], per_page: 4)
    elsif query == '0' || query.to_i != 0
      @sach = Sach.where("giaban <= #{query.to_i}").paginate(:page => params[:page], per_page: 4)
    end 
  end
end
