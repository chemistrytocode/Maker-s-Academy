require 'sinatra/base'

class Birthday < Sinatra::Base
  enable :sessions

  get '/' do
    erb :form
  end

  post '/birthday' do
    # Form variables
    @name = params[:name]
    @day = params[:day]
    @month = params[:month]
    # Today & Birthday
    @today = Date.today
    @bday = Date.parse("#{@day}-#{Date::MONTHNAMES.index(@month)}-#{@today.year}")
    # Calculate Days till:
    @diff = (@bday - @today).to_i
    # @diff += 365 if @diff < 0 # Accounts for negative.
    # Load view
    erb :birthday
  end
end
