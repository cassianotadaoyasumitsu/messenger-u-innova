class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def sms
    phone_number = current_user.phone
    message = params[:message]
    TwilioClient.new.send_message(to: phone_number, body: message)
    redirect_to root_path, notice: "SMS sent!"
  end

  def whatsapp
    phone_number = current_user.phone
    message = params[:message]
    TwilioClient.new.send_whatsapp(to: phone_number, body: message)
    redirect_to root_path, notice: "Whatsapp sent!"
  end
end
