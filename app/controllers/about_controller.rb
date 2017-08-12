class AboutController < ApplicationController
  def index
    @feadback = Feadback.where(publish: true).order(created_at: :desc)
    @reg = Feadback.new
    end
end