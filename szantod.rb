# sincapun.rb
require 'pony'

class Szantod < Sinatra::Base
  get '/' do
    haml :index
  end

  post '/contact' do
    Pony.mail to: 'szantod@mobil.ninja',
              from: "#{params[:name]} <#{params[:email]}>",
              message: params[:comment]
    @sent = true
    haml :index
  end
end
