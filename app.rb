require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    how_many = []
    params[:number].to_i.times do
      how_many << "#{params[:phrase]}\n"
    end
    how_many
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    opp = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case opp
    when "add"
      solution = num1 + num2
    when "subtract"
      solution = num1 - num2
    when "multiply"
      solution = num1 * num2
    when "divide"
      solution = num1 / num2
    end
    solution.to_s
  end
end
