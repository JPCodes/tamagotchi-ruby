require('siantra')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')
require('./tamagotchi.rb')

get('/') do
  erb(:index)
end
