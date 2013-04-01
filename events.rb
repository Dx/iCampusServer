require 'sinatra'
require 'rest_client'
require 'json'

DB = "#{ENV['CLOUDANT_URL']}/events"

get '/' do
  'Hello, world'
end

get '/events/' do	
	doc = RestClient.get("#{DB}")
	@result = JSON.parse(doc)
	@result
end
	
get '/events/:country' do

	doc = RestClient.get("#{DB}/#{params[:country]}")
	@result = JSON.parse(doc)
	@result
end

