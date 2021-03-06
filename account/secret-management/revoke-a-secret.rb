# frozen_string_literal: true

require 'dotenv/load'
require 'nexmo'

NEXMO_API_KEY = ENV['NEXMO_API_KEY']
NEXMO_API_SECRET = ENV['NEXMO_API_SECRET']

NEXMO_SECRET_ID = ENV['NEXMO_SECRET_ID']

client = Nexmo::Client.new(
  api_key: NEXMO_API_KEY,
  api_secret: NEXMO_API_SECRET
)

begin
  response = client.secrets.revoke(NEXMO_SECRET_ID)
  puts 'OK' if response == :no_content
rescue StandardError => e
  puts e.message
end
