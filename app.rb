require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')
require('./lib/tamagotchi.rb')

get('/') do
  erb(:index)
end

post('/tamagotchi-form') do
  @name = params.fetch('name')
  $new_tamagotchi = Tamagotchi.new(@name)
  @food = $new_tamagotchi.food_level()
  @sleep = $new_tamagotchi.sleep_level()
  @activity = $new_tamagotchi.activity_level()
  erb(:index)
end

post('/feed') do
  $new_tamagotchi.feed()
  @food = $new_tamagotchi.food_level()
  @sleep = $new_tamagotchi.sleep_level()
  @activity = $new_tamagotchi.activity_level()

  if @food < 0 or @sleep < 0 or @activity < 0
    erb(:failure)
  else
    erb(:index)
  end

end
