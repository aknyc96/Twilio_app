class TwilioController < ApplicationController

	def send_sms
       message = params[:message]
       number = params[:number]
       account_sid = 'AC95488f0a9506c62953ea7b9b864e47dc'
       auth_token = 'ccfc37ff1abb58a727311a1f85b7e7a3'
    
       @client = Twilio::REST::Client.new account_sid, auth_token
    
      @message = @client.account.messages.create({:to => "#{number}",
                                      :from => "+12013409425",
                                       :body => "Hey ben"})
       redirect_to '/'
      end


     end
