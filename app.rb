require_relative 'config/environment'
require "pry"

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number]
    "#{@num.to_i * @num.to_i}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @phr = params[:phrase]
    @phr * @num.to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @wrd1 = params[:word1]
    @wrd2 = params[:word2]
    @wrd3 = params[:word3]
    @wrd4 = params[:word4]
    @wrd5 = params[:word5]

    "#{@wrd1} #{@wrd2} #{@wrd3} #{@wrd4} #{@wrd5}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case params[:operation]
    when 'add'
      (@num1 + @num2).to_s
    when 'subtract'
      (@num1 - @num2).to_s
    when 'multiply'
      (@num1 * @num2).to_s
    when 'divide'
      (@num1 / @num2).to_s
    end

  end


end
