class Sach < ApplicationRecord
    belongs_to :theloai, touch: true
    has_many :ctdhs
end
