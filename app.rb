require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    gogo = params[:number]
    (gogo.to_i**2).to_s
  end

  get '/say/:number/:phrase' do
    string = ""
    num = params[:number]
    pha = params[:phrase]
    (num.to_i).times do
      string += "#{pha}\n"
    end
    string
  end
end
