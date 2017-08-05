class RetreatController < ApplicationController
  def index
    @images=Gallery.where(retreat: true)
  end
end