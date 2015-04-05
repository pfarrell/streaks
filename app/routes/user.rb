class App < Sinatra::Application
  get '/user/:id' do
    haml :user, locals: {user: User[params[:id]]}
  end
end
