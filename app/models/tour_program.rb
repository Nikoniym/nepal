class TourProgram < ApplicationRecord
  has_attached_file :image, styles: {thumb: "300x200#" }, default_url: "/galleries/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
