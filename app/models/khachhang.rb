class Khachhang < ApplicationRecord
    has_many :donhangs
    belongs_to :user
end
