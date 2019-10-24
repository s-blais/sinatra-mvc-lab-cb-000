require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
<<<<<<< HEAD
    instance = PigLatinizer.new
    @result = instance.piglatinize(params[:user_phrase])
=======
    @result = PigLatinizer.new(params[:user_phrase])
>>>>>>> 26e0be5fc21777243a549959eea1a938776b566f
    erb :piglatinized
  end


end
