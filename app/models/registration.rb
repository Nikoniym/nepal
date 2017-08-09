class Registration < ApplicationRecord
  validates :phone, :presence => true,
            :numericality => true,
            :length => { :minimum => 10, :maximum => 15 }, if:  Proc.new{|c| c.phone.present?}
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, if:  Proc.new{|c| c.email.present?}
end
