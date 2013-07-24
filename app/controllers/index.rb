get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/results' do
  erb :history
end

post '/race' do
  @players = params[:players]
  erb :race
end
