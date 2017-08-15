class FeadbacksController < ApplicationController
  layout "feadback"
  def create
    @reg =  Feadback.new(reg_params)
    if @reg.save
      flash[:message] = 'Будет опубликовано после проверки модератором'
    end
  end

  private

  def reg_params
    params.require(:feadback).permit(:avatar, :name, :description, :title)
  end

end
