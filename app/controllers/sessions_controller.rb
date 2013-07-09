class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:user][:email])

    if user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to root_path, :notice => "Logged in!"
    else
      raise "No log in succeeded :("
    end
  end
end
