Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'dathang/index'
  get 'khachhang/index'
  get 'khachhang/chitiet/:id', to: 'khachhang#chitiet'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'theloai/index/:id', to: "theloai#index"
  get 'chitiet/index/:id', to: 'chitiet#index', as: 'chitietsanpham'
  get 'chitiet/themnhieusanpham/:id/:soluong', to: 'chitiet#themnhieusanpham'
  get 'checkout/index'
  get 'checkout/xoasanpham/:id', to: 'checkout#xoasanpham', as: 'xoagiohang'
  get 'checkout/thaydoisoluong/:id/:soluong', to: 'checkout#thaydoisoluong'
  # resources :home
  get 'home/index', to: 'home#index'
  get 'home/themgiohang/:id', to: 'home#themgiohang', as: 'themgiohang'
  get 'dathang/index', to: 'dathang#index'
  post 'khachhang/update', to: 'khachhang#update'
  post 'dathang/datmua', to: 'dathang#datmua'
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
