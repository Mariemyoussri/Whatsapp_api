class WhatsappTestController < ApplicationController
 
  def whatsapp_cloud_send_message
    MsgSender.new(
      @phone_number = params[:phone_number]
    ).call
    render( json: { success: true },
      status: :ok )
  end

  def twilio_send_message
    TwilioMsgSender.new(
      @phone_number = params[:phone_number]
    ).call
    render( json: { success: true },
      status: :ok )
  end
end
