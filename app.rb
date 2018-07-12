require "sinatra"
require "sinatra/reloader"
require 'discordrb'

bot = Discordrb::Bot.new token: 'NDY2ODIxMjgwMjQ3ODQwNzY4.DihpZw.R8_c4AcRrZOILDtkuHLh_cyIc04'
bot.message(with_text: 'Ping!') do |event|
  event.respond 'Pong!'
end

bot.message(with_text: 'Time') do |event|
  time = Time.now
  event.respond "The current time is: #{time.strftime('%F %T %Z')}"
end

bot.message(with_text: 'Hola') do |event|
  time = Time.now
  event.respond "No quiero saludar :("
end

bot.message(with_text: 'Te odio') do |event|
  time = Time.now
  event.respond "Yo más jaja"
end

bot.run

get '/' do
  'Put this in your pipe & smoke it!'
end
