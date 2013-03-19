require 'sinatra'
require 'rest_client'
require 'json'

get '/' do
  'Hello, world'
end

get '/events/' do  
  "{'events':
      [
        {'initialdate':'2013-07-30', 'finaldate':'2013-08-04', 'name':'Campus Party 2013 MX', 'place':'Expo Santa Fe', 'city'='Mexico DF'}
        {'initialdate':'2013-06-01', 'finaldate':'2013-06-17', 'name':'Cumple', 'place':'Casa', 'city'='Mexico DF'}
      ]
  }"
end

