class Feadback < ApplicationRecord
  has_attached_file :avatar, styles: {  thumb: "1300x130#" }, :default_url => "missing_:style.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  validates :name, :description, presence: true

  attr_accessor :delete_avatar
  before_validation { self.avatar.clear if self.delete_avatar == '1' }
end
