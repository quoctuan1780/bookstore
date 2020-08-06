class Sach < ApplicationRecord
    belongs_to :theloai
    has_many :ctdhs
end
