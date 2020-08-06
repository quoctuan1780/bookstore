class Donhang < ApplicationRecord
    has_many :ctdhs
    belongs_to :khachhang
end
