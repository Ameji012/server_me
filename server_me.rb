require 'sinatra'

get '/' do
  File.read(File.join('public', 'amejia2.html'))
end
