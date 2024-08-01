# class TwilioController < ApplicationController
#   skip_before_action :verify_authenticity_token
#
#   def webhook
#     webhook_url = url_for(controller: 'twilio', action: 'webhook', only_path: false)
#     Rails.logger.info "Webhook URL: #{webhook_url}"
#
#     from = params[:From]
#     body = params[:Body]
#
#     forward_to_number = current_user.phone
#
#     TwilioClient.new.send_message(to: forward_to_number, body: "From #{from}: #{body}")
#
#     head :ok
#   end
# end
