require 'sinatra'
require 'rest_client'
require 'json'

DB = "#{ENV['CLOUDANT_URL']}/events"

get '/' do
  'This is the iCampus REST API :)'
end

get '/events/' do	
	doc = RestClient.get("#{DB}/_all_docs&include_docs=true")
	@result = JSON.parse(doc)
	@result
end
	
get '/events/:country' do

	doc = RestClient.get("#{DB}/#{params[:country]}")
	@result = JSON.parse(doc)
	@result
end

