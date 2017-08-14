class RegistrationMailer < ApplicationMailer
  def send_mail(registaration)
    @email = registaration.email
    @phone = registaration.phone

    mail to: "worldnillin@gmail.com", subject: 'Заявка на тур'
  end
end
