require 'sinatra'
require 'rest_client'
require 'json'



get '/' do
  'Hello, world'
end
	
get '/events/:doc' do
	DB = "#{ENV['https://app13659298.heroku:55Vha7nOQVFFOdgAQILo53qO@app13659298.heroku.cloudant.com']}/events"
	doc = RestClient.get("#{DB}/#{params[:doc]}")
	@result = JSON.parse(doc)
	haml :doc_id
end

# get '/events/' do 
  # "{'events':
  #     [
  #       {'initialdate':'2013-07-30', 'finaldate':'2013-08-04', 'name':'Campus Party 2013 MX', 'place':'Expo Santa Fe', 'city':'Mexico DF'}
  #       {'initialdate':'2013-06-01', 'finaldate':'2013-06-17', 'name':'Cumple', 'place':'Casa', 'city':'Mexico DF'}
  #     ]
  # }"
# end

