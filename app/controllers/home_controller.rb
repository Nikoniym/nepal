class HomeController < ApplicationController
  def index
    @gallery = Gallery.order('RANDOM()').limit(32)
    @banners = Banner.order(:position)
    @tour_program = TourProgram.order(:position)
    @registration = Registration.new
  end
end
