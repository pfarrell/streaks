class App < Sinatra::Application
  get '/streak/:id' do
    haml :streak, locals: {streak: Streak[params[:id]]}
  end
end
