require 'dotenv/load'
require 'nexmo'

NEXMO_API_KEY = ENV['NEXMO_API_KEY']
NEXMO_API_SECRET = ENV['NEXMO_API_SECRET']
INSIGHT_NUMBER = ENV['INSIGHT_NUMBER']

client = Nexmo::Client.new(
  api_key: NEXMO_API_KEY,
  api_secret: NEXMO_API_SECRET
)

insight = client.number_insight.advanced(
  number: INSIGHT_NUMBER,
  callback: 'https//demo.ngrok.io/webhooks/insight'
)

puts insight.inspect

