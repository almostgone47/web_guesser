require 'sinatra'
require 'sinatra/reloader'

SECRET_NUMBER = rand(100)

get '/' do
 guess = params['guess'].to_i
 message = check_guess(guess)
 erb :index, :locals => {:num => SECRET_NUMBER, :message => message}
end

	def check_guess(guess)
  	if (guess - SECRET_NUMBER) > 5
  		"WAY TOO HIGH!!!"
  	elsif (SECRET_NUMBER - guess) > 5
  		"WAY TOO LOW!!!"
  	elsif guess > SECRET_NUMBER
  		"Too high!!!!"
  	elsif guess < SECRET_NUMBER
  		"Too low!!!!"
  	else
  		"You guessed it!!!! The secret number was #{SECRET_NUMBER}!"
  	end
  end