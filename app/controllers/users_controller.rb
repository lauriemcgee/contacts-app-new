class UsersController < ApplicationController
  def new
    render "new.html.erb"
  end
  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
      )
    if user.save
      session[:user_id] = user.user_id
      flash[:success] = "Welcome to the club!"
      redirect_to "/"
    else
      flash[:warning] = "Uh oh-check your email and password!"
      redrect_to "/signup"
    end
  end
end
