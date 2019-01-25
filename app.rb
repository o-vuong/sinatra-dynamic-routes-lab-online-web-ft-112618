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

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
end
