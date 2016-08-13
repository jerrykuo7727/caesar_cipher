require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/caesar_cipher'

get '/' do
  text = params["text"]
  key = params["key"].to_i
  cipher = ""
  cipher = caesar_cipher(text, key) if params["encode"] && key
  cipher = caesar_cipher(text, key * -1) if params["decode"] && key
  print "text: "; p text
  print "cipher: "; p cipher
  erb :index, :locals => {:cipher => cipher}
end