require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @thing = @number * @number
    "#{@thing.to_s}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    array = []
      @number.times do
        array << "#{@phrase}"
      end
      array
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    array = []
    @word1 = array << params[:word1]
    @word2 = array << params[:word2]
    @word3 = array << params[:word3]
    @word4 = array << params[:word4]
    @word5 = array << params[:word5]
    # binding.pry
    new_array = array.join(" ") + "."
    "#{new_array}"
    #also works @words = [params[:word1], params[:word2],params[:word3], params[:word4], params[:word5]]
    #"#{@words}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == "add"
      result =  @number1 + @number2
    elsif @operation == "subtract"
      result = @number1 - @number2
    elsif @operation == "divide"
      result = @number1 / @number2
    elsif @operation == "multiply"
      result = @number1 * @number2
    end
    "#{result}"
  end


end
