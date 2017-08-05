class Banner < ApplicationRecord
  has_attached_file :image, styles: { medium: "1920x683#", thumb: "100x100>" }, default_url: "/galleries/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
