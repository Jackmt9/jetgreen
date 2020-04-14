class ApplicationController < ActionController::Base
   
    def twilio(phone, text)
        account_sid = ENV['twilio_account_sid'] # Test Account SID from www.twilio.com/console/settings
        auth_token = ENV['twilio_auth_token']   # Test Auth Token from www.twilio.com/console/settings
    
        @client = Twilio::REST::Client.new account_sid, auth_token
        message = @client.messages.create(
            body: text,
            to: phone,    # Replace with your phone number
            from: ENV['magic_number'])  # Use this Magic Number for creating SMS
    
        puts message.sid
    end
end
