class Sach < ApplicationRecord
    belongs_to :theloai, touch: true
    has_many :ctdhs
    mount_uploader :hinhanh, ImageUploader
end
