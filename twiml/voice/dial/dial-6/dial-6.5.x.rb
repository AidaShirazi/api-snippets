require 'twilio-ruby'

response = Twilio::TwiML::VoiceResponse.new
response.dial(record: 'record-from-ringing-dual',
    recording_status_callback: 'www.myexample.com') do |dial|
        dial.conference('myteamroom')
    end

puts response
