get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/results' do
  erb :history
end

get '/race' do
  erb :js_racer
end
