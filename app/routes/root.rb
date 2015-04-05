class App < Sinatra::Application
  get "/" do
    haml :index, locals: {users: User.all} 
  end
end
