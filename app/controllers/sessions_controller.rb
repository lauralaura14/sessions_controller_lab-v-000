class SessionsController < ApplicationController

  def new
  end

  def create
      if !session[:name].nil?
        session[:name] = params[:name]
        redirect_to '/'
      else
        redirect_to '/new'
      end
  end

  def destroy
    if session[:name]
      session.delete :name
    else
      session[:name] = nil
    end
  end

end
