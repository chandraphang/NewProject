class SessionsController < ApplicationController

  def new

    session[:user_id] = nil

  end

  def create

     user = User.find_by(email: params[:session][:email])

  if user && user.authenticate(params[:session][:password])
    session[:user_id] = user.id

    redirect_to blogs_url

  else
    flash[:danger] = 'Invalid email/password combination'

    render :new

  end
end

  def destroy


  end
end
