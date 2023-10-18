class TwilioMsgSender
  require 'twilio-ruby'

  def initialize(phone_number)
    @phone_number = phone_number
  end

  def call
    account_sid = "ACc1d3f0295c989550211505bae61af5f0"
    auth_token = "925f9a91d978ef8bd3bcb5c08327d263"
    client = Twilio::REST::Client.new(account_sid, auth_token)
    message = client.messages.create(
                             from: 'whatsapp:+14155238886',
                             to: "whatsapp:+#{@phone_number}",
                             body: 'Ahoy WhatsApp user!'
                           )
  end

end