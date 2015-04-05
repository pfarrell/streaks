class App < Sinatra::Application
  post '/entry' do
    require 'byebug'
    byebug
    streak = Streak[params[:streak_id]]
    entry = Entry.new
    blurb = []
    streak.definition.each do |defi|
      item = {}
      item[defi.name] = params[defi.name.to_sym]
      blurb << item
    end
    entry.blurb = blurb
    entry.streak = streak
    entry.save
    redirect("/streak/#{params[:streak_id]}")
  end
end
