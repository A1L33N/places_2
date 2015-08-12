require 'sinatra'
require 'sinatra/reloader'
require './lib/places'
also_reload('.lib/**/*.rb')

get('/') do
  Place.clear
 erb(:index)
end

post('/') do
  @name = params.fetch('place_name')
  @description = params.fetch('description')
  @place = Place.new(@name, @description)
  @place.save
  erb(:index)
end
