class Registration < ApplicationRecord
  validates :phone, :presence => true,
            :numericality => true,
            :length => { :minimum => 10, :maximum => 15 }, if:  Proc.new{|c| c.phone.present?}
end
