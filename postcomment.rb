require 'sinatra'
require 'post_haste'
include PostHaste

get '/' do
  erb :index
end

post '/result' do
  @url = params[:url]
  @article = @article = Article.create_from_url(@url)
  erb :result
end