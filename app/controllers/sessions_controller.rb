class SessionsController < ApplicationController

  def new
  end

  def create
      session[:name] = params[:name]
      redirect_to '/'
  end

  def destroy
    if session[:name]
      session.delete :name
    else
      session[:name] = nil
    end
  end

end
