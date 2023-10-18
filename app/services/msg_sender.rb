require 'uri'
require 'net/http'
require 'openssl'
require 'faraday'

class MsgSender
  def initialize(phone_number)
    @phone_number = phone_number
  end

  def call
    connection = Faraday.new(
                url: 'https://graph.facebook.com/v13.0/107012485449967/messages',
                headers: {'Content-Type' => 'application/json'}
              )do |connection|
              connection.response :logger, @logger, :bodies => true
            end

    response = connection.post() do |req|
      req.headers['Content-Type'] = 'application/json'
      req.headers['Accept'] = 'application/json'
      req.headers['Authorization'] = "Bearer EAARZC5DBcu2gBAK9iMZCwYjjPP4SF0GPfcX5C49Bnrj5CYq59iuyDuN9AZAmv6p4HAnZCmJJakRgZCgCiIciC04MZAA5buZBymldgt1ZBXsjVmCLB6ODMMm23IbiGv0OwQilD5UIiBTYDEoE6mriEoC0djBspI9BdNJC28h2EwGFQ69WVGGfe92i0zXSGzSTJZBZBXyy6D81DouwZDZD"
      req.body = {
                    "messaging_product": "whatsapp",
                    "recipient_type": "individual",
                    "to": @phone_number,
                    "type": "template",
                    "template": {
                        "name": "phone_verification",
                        "language": {
                            "code": "en"
                        },
                        "components": [
                            {
                                "type": "body",
                                "parameters": [
                                    {
                                        "type": "text",
                                        "text": "1235"
                                    }
                                ]
                            }
                        ]
                    }
                  }.to_json
    end
  end
end
