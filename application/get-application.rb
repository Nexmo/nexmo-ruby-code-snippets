# frozen_string_literal: true

require 'dotenv/load'
require 'nexmo'

NEXMO_API_KEY = ENV['NEXMO_API_KEY']
NEXMO_API_SECRET = ENV['NEXMO_API_SECRET']

NEXMO_APPLICATION_ID = ENV['NEXMO_APPLICATION_ID']

client = Nexmo::Client.new(
  api_key: NEXMO_API_KEY,
  api_secret: NEXMO_API_SECRET
)

begin
  response = client.applications.get(NEXMO_APPLICATION_ID)
  puts "#{response.name}: #{response.id}"
rescue StandardError => e
  puts e.message
end
