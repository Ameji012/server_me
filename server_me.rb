require 'sinatra'

get '/' do
  File.read(File.join('public', 'home.html'))
end
get '/projects' do
  File.read(File.join('public', 'resume.html'))
end
get '/resume' do
  File.read(File.join('public', 'projects.html'))
end