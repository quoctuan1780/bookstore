class User < ApplicationRecord
  belongs_to :quyen
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  # after_create :send_mail
  # def send_mail
  #     ConfirmMailer.send_mail(self).deliver
  # end
end
