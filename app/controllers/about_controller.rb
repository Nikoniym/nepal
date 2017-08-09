class AboutController < ApplicationController
  def index
    @feadback = Feadback.where(publish: true)
    @reg = Feadback.new
    end
end