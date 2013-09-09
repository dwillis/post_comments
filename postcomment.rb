require 'sinatra'
require 'post_haste'
include PostHaste

get '/' do
  erb :index
end

post '/result' do
  @url = params[:url]
  redirect "/show?url=#{@url}"
end

get '/show' do
  @url = params[:url]
  @article = Article.create_from_url(@url, 50)
  erb :result
end