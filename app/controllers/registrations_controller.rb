class RegistrationsController < ApplicationController
  def create
    if reg_params[:phone].present? or reg_params[:email].present?
      @reg = Registration.new(reg_params)
      if @reg.save
        flash[:message] = 'Отправлено успешно'
      end
    else
      flash[:message] = 'Заполните одно из полей'
    end
  end
  private

  def reg_params
    params.require(:registration).permit(:phone, :email)
  end

end
