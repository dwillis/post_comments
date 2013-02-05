require 'sinatra'
require 'post_haste'
include PostHaste

get '/' do
  '<form method="post" action="/result">
  <input name="url" />
    <div><button type="submit">Submit</button></div>
  </form>'
end

post '/result' do
  @url = params[:url]
  @article = @article = Article.create_from_url(@url)
  erb :result
end