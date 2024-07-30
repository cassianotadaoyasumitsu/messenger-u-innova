class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def sms
    phone_number = current_user.phone
    message = current_user.email
    TwilioClient.new.send_message(to: phone_number, body: message)
    redirect_to root_path, notice: "Message sent!"
  end
end
