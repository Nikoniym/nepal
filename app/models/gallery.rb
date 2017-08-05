class Gallery < ApplicationRecord
  has_attached_file :image, styles: { medium: "1600x1200>", thumb: "250x185#", small: "300x300>" }, default_url: "/galleries/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
