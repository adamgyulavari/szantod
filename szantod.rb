# sincapun.rb

class Szantod < Sinatra::Base
  get '/' do
    haml :index
  end
end
